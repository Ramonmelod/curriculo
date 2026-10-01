# Resume — Ramon Melo

Resume built with [Typst](https://typst.app), with four versions generated from a shared source:

| File | Version | Language |
| --- | --- | --- |
| `curriculo-empresa.typ` | Job applications (CLT/PJ) — skills and experience highlighted | PT-BR |
| `curriculo-freelance.typ` | Client acquisition — production projects highlighted | PT-BR |
| `curriculo-empresa-en.typ` | Job applications — skills and experience | EN |
| `curriculo-freelance-en.typ` | Client acquisition — production projects | EN |

`comum.typ` centralizes shared data (contact, education, languages).

## Requirements

- [Typst](https://github.com/typst/typst) (`typst --version` ≥ 0.15)
- **Inter** font installed (used by the Metronic template)
- **Font Awesome 6** fonts (`Font Awesome 6 Free`, `Font Awesome 6 Free Solid`, `Font Awesome 6 Brands`) — used for the icons

## Installation (Linux Mint / Ubuntu / Debian)

### 1. Typst

There is no official package in the APT repositories. Install the GitHub binary into `~/.local/bin` (the `build.sh` already includes that directory in the `PATH`):

```bash
mkdir -p ~/.local/bin
curl -L -o /tmp/typst.tar.xz \
  https://github.com/typst/typst/releases/download/v0.15.1/typst-x86_64-unknown-linux-musl.tar.xz
tar -xJf /tmp/typst.tar.xz -C /tmp
cp /tmp/typst-x86_64-unknown-linux-musl/typst ~/.local/bin/
chmod +x ~/.local/bin/typst
typst --version   # should print "typst 0.15.1 ..."
```

> If `~/.local/bin` is not on the `PATH` of your interactive shell, add
> `export PATH="$HOME/.local/bin:$PATH"` to your `~/.bashrc`/`~/.zshrc`.
> `build.sh` works regardless, since it adjusts the `PATH` internally.

Alternatives: `cargo install typst-cli` (requires Rust) or `snap install typst`.

### 2. Inter font

On Linux Mint 22+ it is already installed (`/usr/share/fonts/opentype/inter/`). If you need to install it:

```bash
sudo apt install fonts-inter
```

Or download it from <https://rsms.me/inter/> and copy the `.otf` files to `~/.local/share/fonts/`.

### 3. Font Awesome 6

The APT package `fonts-font-awesome` only installs version 4 — **not sufficient**. Install v6 by downloading the official desktop bundle:

```bash
mkdir -p ~/.local/share/fonts/font-awesome-6
curl -L -o /tmp/fa6.zip \
  https://use.fontawesome.com/releases/v6.7.2/fontawesome-free-6.7.2-desktop.zip
unzip -o -q /tmp/fa6.zip -d /tmp/fa6
cp /tmp/fa6/fontawesome-free-6.7.2-desktop/otfs/*.otf ~/.local/share/fonts/font-awesome-6/
fc-cache -f
```

Check that the three families were registered:

```bash
fc-list | grep "Awesome 6"
# Font Awesome 6 Free, Font Awesome 6 Free Solid, Font Awesome 6 Brands
```

Without these fonts the PDF still compiles, but the sidebar icons (e-mail, phone, LinkedIn, etc.) render empty or broken.

## Build

```bash
./build.sh
```

Generates the four PDFs into `out/` (`curriculo-{empresa,freelance}{,-en}.pdf`).

Live preview while editing:

```bash
typst watch curriculo-empresa.typ out/curriculo-empresa.pdf
```

## Template

Layout from [Metronic](https://typst.app/universe/package/metronic) (`@preview/metronic:1.0.0`) — sidebar with contact/skills and a main column with sections. Colors configurable via `#theme()` at the top of each file.
