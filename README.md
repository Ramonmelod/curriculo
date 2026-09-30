# Currículo — Ramon Melo

Currículo em [Typst](https://typst.app) com quatro versões geradas a partir de fonte compartilhada:

| Arquivo | Versão | Idioma |
| --- | --- | --- |
| `curriculo-empresa.typ` | Processo seletivo (CLT/PJ) — habilidades e experiência em destaque | PT-BR |
| `curriculo-freelance.typ` | Captação de clientes — projetos em produção em destaque | PT-BR |
| `curriculo-empresa-en.typ` | Job applications — skills and experience | EN |
| `curriculo-freelance-en.typ` | Client acquisition — production projects | EN |

`comum.typ` centraliza dados compartilhados (contato, formação, idiomas).

## Requisitos

- [Typst](https://github.com/typst/typst) (`typst --version` ≥ 0.15)
- Fonte **Inter** instalada (o template Metronic a usa)
- Fontes **Font Awesome 6** (`Font Awesome 6 Free`, `Font Awesome 6 Free Solid`, `Font Awesome 6 Brands`) — usadas nos ícones

## Build

```bash
./build.sh
```

Gera os quatro PDFs em `out/` (`curriculo-{empresa,freelance}{,-en}.pdf`).

Preview ao vivo durante a edição:

```bash
typst watch curriculo-empresa.typ out/curriculo-empresa.pdf
```

## Template

Layout do [Metronic](https://typst.app/universe/package/metronic) (`@preview/metronic:1.0.0`) — sidebar com contato/skills e coluna principal com seções. Cores configuráveis via `#theme()` no topo de cada arquivo.
