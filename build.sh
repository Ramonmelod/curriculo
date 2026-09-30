#!/usr/bin/env bash
# Compila as duas versões do currículo para PDF em ./out
# Uso: ./build.sh
# Preview ao vivo: typst watch curriculo-empresa.typ out/curriculo-empresa.pdf
set -euo pipefail
cd "$(dirname "$0")"
export PATH="$HOME/.local/bin:$PATH"

mkdir -p out
typst compile curriculo-empresa.typ out/curriculo-empresa.pdf
typst compile curriculo-freelance.typ out/curriculo-freelance.pdf
echo "OK: out/curriculo-empresa.pdf e out/curriculo-freelance.pdf"
