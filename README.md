# Currículo — Ramon Melo

Currículo em [Typst](https://typst.app) com duas versões geradas a partir de fonte compartilhada:

| Arquivo | Versão |
| --- | --- |
| `curriculo-empresa.typ` | Processo seletivo (CLT/PJ) — habilidades e experiência em destaque |
| `curriculo-freelance.typ` | Captação de clientes — projetos em produção em destaque |

`comum.typ` centraliza dados compartilhados (contato, formação, idiomas).

## Requisitos

- [Typst](https://github.com/typst/typst) (`typst --version` ≥ 0.15)
- Fonte **Inter** instalada (o template Metronic a usa)
- Fontes **Font Awesome 6** (`Font Awesome 6 Free`, `Font Awesome 6 Free Solid`, `Font Awesome 6 Brands`) — usadas nos ícones

## Build

```bash
./build.sh
```

Gera `out/curriculo-empresa.pdf` e `out/curriculo-freelance.pdf`.

Preview ao vivo durante a edição:

```bash
typst watch curriculo-empresa.typ out/curriculo-empresa.pdf
```

## Template

Layout do [Metronic](https://typst.app/universe/package/metronic) (`@preview/metronic:1.0.0`) — sidebar com contato/skills e coluna principal com seções. Cores configuráveis via `#theme()` no topo de cada arquivo.
