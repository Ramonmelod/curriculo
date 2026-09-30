// Versão FREELANCE — foco em captação de clientes, projetos entregues em produção.
// Compilar: typst compile curriculo-freelance.typ out/curriculo-freelance.pdf

#import "template.typ": cv, secao, entrada, projeto, cor-suave
#import "comum.typ": contatos, formacao, idiomas

#show: cv.with(
  nome: "Ramon Melo",
  titulo: "Desenvolvedor Web Full-Stack — sistemas web sob medida para empresas",
  contatos: contatos,
)

#secao("Resumo")[
  Desenvolvedor web full-stack e engenheiro mecânico. Projeto, desenvolvo e
  opero aplicações web completas em produção para pequenas e médias empresas:
  de catálogos e sites institucionais a e-commerce com pagamento PIX e ERPs
  industriais. Atuo de forma independente em todo o ciclo — requisitos,
  arquitetura, implementação, deploy, domínio/DNS e operação.
]

#secao("Projetos em produção")[
  #projeto(
    nome: "ERP de Gestão Industrial",
    contexto: "Moreira Alimentos — indústria alimentícia",
    stack: "Next.js · TypeScript · PostgreSQL · Docker · Vercel",
  )[
    Sistema de cadeia de suprimentos em operação diária — pedidos, produção,
    expedição, estoque, perfis de preço por cliente e painel de indicadores —
    desenvolvido para substituir e evoluir o sistema de gestão anterior da
    empresa. Controle de acesso por função (vendas, expedição, produção,
    administração) e notificações internas.
  ]

  #projeto(
    nome: "E-commerce de Produtos Digitais",
    contexto: "Frutos Feito à Mão",
    stack: "Next.js · TypeScript · PostgreSQL · Mercado Pago · Cloudflare R2 · AWS SES",
  )[
    Loja com checkout PIX (Mercado Pago), confirmação automática via webhook
    com verificação de assinatura e entrega do produto por e-mail com link de
    download seguro. Painel administrativo para produtos e clientes.
  ]

  #projeto(
    nome: "Catálogo de Produtos",
    contexto: "Movear Automação — hidráulica e automação industrial",
    stack: "Next.js · React · Tailwind · PostgreSQL (Neon) · Cloudinary · Vercel",
  )[
    Vitrine pública de produtos e categorias + área administrativa para gestão
    do catálogo, usuários e carrossel da home. Importação do catálogo via
    planilhas e gestão de imagens em nuvem.
  ]

  #projeto(
    nome: "Site Institucional",
    contexto: "Nubia Melo Corretora de Seguros — nubiacorretora.com.br",
    stack: "HTML · CSS · JavaScript · SEO técnico",
  )[
    Site estático com SEO completo (Open Graph, canonical, robots.txt) e
    integração com WhatsApp.
  ]

  #projeto(
    nome: "Automação de Infraestrutura",
    contexto: "sistema de backups PostgreSQL multi-cliente",
    stack: "Bash · pg_dump · rclone · cron · Telegram Bot API",
  )[
    Backups agendados com upload para Google Drive, política de retenção por
    cliente e alertas via Telegram.
  ]
]

#secao("Serviços")[
  - Levantamento de requisitos e proposta técnica
  - Arquitetura e desenvolvimento full-stack
  - Integrações: pagamentos, e-mail transacional, APIs externas
  - Deploy, domínio/DNS e operação em produção
  - Automação de processos e rotinas
]

#secao("Stack")[
  TypeScript · Node.js · React · Next.js · PostgreSQL · Tailwind · Docker ·
  APIs REST · Mercado Pago/PIX · AWS (SES/SNS/EC2) · Vercel · Neon ·
  Cloudinary · Cloudflare R2 · Git · Jest · GitHub Actions · Linux · Bash
]

#secao("Experiência complementar")[
  #entrada(titulo: "Engenheiro", org: "Universidade Federal de Santa Catarina (UFSC)", periodo: "2016 – atual")[
    Gestão técnica e de contratos, análise de propostas e soluções digitais
    para processos internos.
  ]
]

#secao("Formação e idiomas")[
  *#formacao.curso* — #formacao.instituicao #h(1fr) #text(fill: cor-suave)[#formacao.periodo]

  #idiomas
]
