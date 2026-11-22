#!/bin/sh
# Builds index.html (the GitHub Pages web app) from commonplace-atlas.html (the Claude artifact).
# Everything before <header class="bar"> goes into <head>; the rest becomes <body>.
set -e
cd "$(dirname "$0")"
SRC=commonplace-atlas.html
grep -q '<header class="bar">' "$SRC" || { echo "build.sh: marker not found in $SRC" >&2; exit 1; }
{
  printf '%s\n' '<!doctype html>' '<html lang="en">' '<head>' \
    '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">' \
    '<link rel="manifest" href="manifest.webmanifest">' \
    '<meta name="theme-color" content="#2343C4">' \
    '<link rel="icon" href="icon.svg" type="image/svg+xml">' \
    '<link rel="apple-touch-icon" href="icon-192.png">' \
    '<meta name="apple-mobile-web-app-capable" content="yes">' \
    '<meta name="mobile-web-app-capable" content="yes">' \
    '<meta name="apple-mobile-web-app-title" content="Atlas">' \
    '<style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0;font:14px/1.4 system-ui,-apple-system,"Segoe UI",sans-serif}img{max-width:100%}[hidden]{display:none!important}</style>'
  sed -n '/<header class="bar">/q;p' "$SRC"
  printf '%s\n' '</head>' '<body>'
  sed -n '/<header class="bar">/,$p' "$SRC"
  printf '%s\n' '</body>' '</html>'
} > index.html
echo "Built index.html ($(wc -c < index.html) bytes)"
