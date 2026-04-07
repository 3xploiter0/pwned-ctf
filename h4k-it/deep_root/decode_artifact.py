#!/usr/bin/env python3
import importlib.util
import pathlib
import re

artifact = pathlib.Path('deep_root/artifacts/sys_update_cache.py')
internal_html = pathlib.Path('deep_root/artifacts/internal.html')

spec = importlib.util.spec_from_file_location('cachemod', artifact)
mod = importlib.util.module_from_spec(spec)
spec.loader.exec_module(mod)

html = internal_html.read_text(encoding='utf-8')
key = re.search(r'build: rev\s+([^\s]+)', html).group(1).encode()
decoded = mod._d(mod._v, key).decode('utf-8')

print('Build key:', key.decode())
print(decoded)
