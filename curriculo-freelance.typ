// Versão FREELANCE — captação de clientes, layout Metronic.
// Compilar: typst compile curriculo-freelance.typ out/curriculo-freelance.pdf

#import "@preview/metronic:1.0.0": *
#import "comum.typ": contato, formacao, idiomas

#theme(
  accent-color: rgb("1F4E5F"),
  background-color: rgb("F2F0EF"),
)

#show: resume-page.with(
  sidebar: [
    = Ramon Melo

    #medium("Desenvolvedor Web Full-Stack")

    #v(8pt)

    Sistemas web sob medida para empresas — projeto, desenvolvo e opero
    aplicações completas em produção, do planejamento ao deploy, domínio/DNS
    e operação.

    #v(8pt)

    #contact(
      email: contato.email,
      phone: contato.telefone,
      linkedin: contato.linkedin,
      location: contato.cidade,
    )

    #v(5pt)

    #section(icon: "graduation-cap", "Formação")[
      #small()[
        #formacao.curso \
        #formacao.instituicao \
        #formacao.periodo
      ]
    ]

    #section(icon: "briefcase", "Experiência")[
      #small()[
        Engenheiro — UFSC (2016–atual) \
        Gestão técnica e soluções digitais internas.
      ]
    ]

    #section(icon: "code", "Stack")[
      #tags(
        "TypeScript", "Node.js", "React", "Next.js",
        "PostgreSQL", "Tailwind", "APIs REST", "Docker",
        "Mercado Pago/PIX", "AWS", "Vercel", "Neon",
        "Cloudinary", "Cloudflare R2", "Jest",
        "GitHub Actions", "Git", "Linux", "Bash",
      )
    ]

    #section(icon: "language", "Idiomas")[
      #small()[#idiomas]
    ]
  ],
)

#section(icon: "rocket", "Projetos em produção")[
  === ERP de Gestão Industrial
  Moreira Alimentos — indústria alimentícia

  Sistema de cadeia de suprimentos em operação diária (pedidos, produção,
  expedição, estoque, perfis de preço, indicadores), substituindo e evoluindo
  o sistema de gestão anterior da empresa. Acesso por função e notificações.

  #tags("Next.js", "TypeScript", "PostgreSQL", "Docker", "Vercel")

  #v(4pt)

  === E-commerce de Produtos Digitais
  Frutos Feito à Mão

  Checkout PIX (Mercado Pago), confirmação via webhook com verificação de
  assinatura e entrega por e-mail com link de download seguro. Painel
  administrativo.

  #tags("Next.js", "PostgreSQL", "Mercado Pago", "Cloudflare R2")

  #v(4pt)

  === Catálogo de Produtos
  Movear Automação — hidráulica e automação industrial

  Vitrine pública + painel administrativo (catálogo, usuários, carrossel).
  Importação via planilhas e imagens em nuvem.

  #tags("Next.js", "Tailwind", "PostgreSQL (Neon)", "Cloudinary")

  #v(4pt)

  === Site Institucional
  Nubia Melo Corretora de Seguros — nubiacorretora.com.br

  Site estático com SEO completo e integração com WhatsApp.

  #tags("HTML", "CSS", "JavaScript", "SEO")

  #v(4pt)

  === Automação de Infraestrutura
  Sistema de backups PostgreSQL multi-cliente

  Backups agendados com upload para Google Drive, retenção por cliente e
  alertas via Telegram.

  #tags("Bash", "pg_dump", "rclone", "cron", "Telegram Bot API")
]

#section(icon: "wrench", "Serviços")[
  Requisitos e proposta técnica · Arquitetura e desenvolvimento full-stack ·
  Integrações (pagamentos, e-mail, APIs) · Deploy, domínio/DNS e operação ·
  Automação de processos
]
