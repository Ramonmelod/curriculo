// Dados compartilhados entre as versões do currículo.
// Edite aqui para alterar as duas versões de uma vez.

#let contato = (
  email: "contato@ramonmelo.com.br",
  telefone: "(48) 99859-4788",
  whatsapp-url: "https://wa.me/5548998594788",
  linkedin: "linkedin.com/in/ramonmelod",
  linkedin-url: "https://www.linkedin.com/in/ramonmelod",
  cidade: "Florianópolis, SC",
)

#let contatos = (
  [Florianópolis, SC],
  link("mailto:" + contato.email)[#contato.email],
  link(contato.whatsapp-url)[#contato.telefone],
  link(contato.linkedin-url)[#contato.linkedin],
)

#let formacao = (
  curso: "Engenharia Mecânica",
  instituicao: "Universidade Federal do Piauí (UFPI)",
  periodo: "2012–2016",
)

#let idiomas = "Português (nativo) · Inglês (fluente) · Alemão (intermediário) · Espanhol (intermediário)"
