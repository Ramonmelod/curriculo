#!/usr/bin/env bash
# Compila todas as versões do currículo para PDF em ./out
# Uso: ./build.sh
# Preview ao vivo: typst watch curriculo-empresa.typ out/curriculo-empresa.pdf
set -euo pipefail
cd "$(dirname "$0")"
export PATH="$HOME/.local/bin:$PATH"

mkdir -p out
for v in empresa freelance empresa-en freelance-en; do
  typst compile "curriculo-$v.typ" "out/curriculo-$v.pdf"
done
echo "OK: 4 PDFs gerados em out/"
