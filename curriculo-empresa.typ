// Versão EMPRESA — processo seletivo (CLT/PJ), layout Metronic.
// Compilar: typst compile curriculo-empresa.typ out/curriculo-empresa.pdf

#import "@preview/metronic:1.0.0": *
#import "comum.typ": contato, formacao, idiomas

#theme(
  accent-color: rgb("1F4E5F"),
  background-color: rgb("F2F0EF"),
)

#show: resume-page.with(
  sidebar: [
    = Ramon Melo

    #medium("Desenvolvedor Full-Stack")

    #v(5pt)

    Engenheiro (UFSC desde 2016) e desenvolvedor web desde 2023, com sistemas
    reais em produção — dos requisitos ao deploy e operação.

    #v(5pt)

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

    #section(icon: "code", "Habilidades")[
      === Linguagens
      #v(3pt)
      #tags("TypeScript", "JavaScript", "Bash")

      === Frontend
      #v(3pt)
      #tags("React 19", "Next.js", "Tailwind CSS")

      === Backend
      #v(3pt)
      #tags("Node.js", "APIs REST", "RBAC", "Zod", "Webhooks")

      === Dados e Infra
      #v(3pt)
      #tags("PostgreSQL", "Redis", "Docker", "Linux", "AWS", "Vercel")

      === Qualidade e Integrações
      #v(3pt)
      #tags("Jest", "GitHub Actions", "Mercado Pago/PIX")
    ]

    #section(icon: "language", "Idiomas")[
      #small()[#idiomas]
    ]
  ],
)

#section(icon: "user", "Resumo")[
  Desenvolvedor full-stack com base em engenharia e experiência ponta a ponta
  em sistemas reais: modelagem de domínio, APIs REST, autenticação e
  autorização, integrações (pagamentos, e-mail, armazenamento), testes
  automatizados, CI e deploy. Valorizo arquitetura simples, separação de
  responsabilidades e manutenibilidade.
]

#section(icon: "briefcase", "Experiência")[
  === Desenvolvedor Full-Stack
  Autônomo — 2023–atual

  - Projetei e mantenho em produção um ERP de cadeia de suprimentos para
    indústria alimentícia (pedidos, produção, expedição, estoque, perfis de
    preço, dashboard de KPIs), reescrevendo e evoluindo o sistema de gestão
    anterior da empresa — RBAC granular e arquitetura em camadas.
  - Desenvolvi e-commerce de produtos digitais com checkout PIX (Mercado Pago):
    webhooks com verificação de assinatura HMAC, idempotência de eventos,
    entrega automática por e-mail com URLs assinadas (Cloudflare R2),
    verificação de e-mail por código e rate limiting.
  - Construí catálogo industrial com área pública e painel administrativo
    (CRUD, importação CSV, upload de imagens, tema claro/escuro).
  - Automatizei backups PostgreSQL multi-cliente com upload para Google Drive,
    retenção configurável e alertas via Telegram.
  - Práticas: testes de integração contra banco real, migrations versionadas,
    CI com lint e testes, documentação de uso.

  #tags("Next.js", "TypeScript", "PostgreSQL", "Docker", "Jest", "AWS SES", "Vercel", "Neon")

  #v(10pt)

  === Engenheiro
  Universidade Federal de Santa Catarina (UFSC) — 2016–atual

  - Gestão técnica e de contratos, análise de propostas técnicas e coordenação
    com equipes multidisciplinares.
  - Desenvolvimento de soluções digitais e automações para processos internos.
]
