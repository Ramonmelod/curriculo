// Layout compartilhado das versões do currículo.
// Funções: cv (documento + cabeçalho), secao, entrada, projeto.

#let cor-destaque = rgb("#1f4e5f")
#let cor-suave = rgb("#555555")

#let cv(nome: "", titulo: "", contatos: (), body) = {
  set document(title: "Currículo — " + nome, author: nome)
  set page(paper: "a4", margin: (top: 1.1cm, bottom: 1.1cm, x: 1.5cm))
  set text(font: "Lato", size: 9.5pt, lang: "pt", hyphenate: true)
  set par(leading: 0.58em, spacing: 0.7em)
  set list(tight: true, indent: 5pt, body-indent: 5pt, spacing: 3pt, marker: [•])
  show link: set text(fill: cor-destaque)

  align(center)[
    #text(size: 19pt, weight: "black")[#nome]
    #v(3pt)
    #text(size: 10.5pt, weight: "semibold", fill: cor-destaque)[#titulo]
    #v(5pt)
    #text(size: 8.5pt, fill: cor-suave)[#contatos.join([#h(4pt)·#h(4pt)])]
  ]

  v(4pt)
  body
}

// Cabeçalho de seção com linha separadora.
#let secao(titulo, corpo) = {
  v(9pt)
  text(size: 10pt, weight: "bold", fill: cor-destaque, tracking: 1.2pt)[#upper(titulo)]
  v(2pt)
  line(length: 100%, stroke: 0.7pt + cor-destaque)
  v(4pt)
  corpo
}

// Entrada de experiência: título + organização à esquerda, período à direita.
#let entrada(titulo: "", org: "", periodo: "", corpo) = {
  v(5pt)
  grid(
    columns: (1fr, auto),
    align: (left, right),
    text(weight: "bold", size: 9.8pt)[#titulo#if org != "" [ — #org]],
    text(size: 8.5pt, fill: cor-suave, style: "italic")[#periodo],
  )
  v(3pt)
  corpo
}

// Entrada de projeto (versão freelance): nome + contexto + stack.
#let projeto(nome: "", contexto: "", stack: "", corpo) = {
  v(5pt)
  [
    #text(weight: "bold", size: 9.8pt)[#nome]#if contexto != "" [
      #text(size: 8.5pt, fill: cor-suave, style: "italic")[— #contexto]
    ]
  ]
  v(2pt)
  corpo
  if stack != "" {
    v(2pt)
    text(size: 8pt, fill: cor-suave)[#stack]
  }
}
