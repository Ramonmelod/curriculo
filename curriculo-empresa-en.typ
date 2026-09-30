// Version EMPRESA (EN) — job applications, Metronic layout.
// Compile: typst compile curriculo-empresa-en.typ out/curriculo-empresa-en.pdf

#import "@preview/metronic:1.0.0": *
#import "comum.typ": contato, formacao-en, idiomas-en

#theme(
  accent-color: rgb("1F4E5F"),
  background-color: rgb("F2F0EF"),
)

#show: resume-page.with(
  sidebar: [
    = Ramon Melo

    #medium("Full-Stack Developer")

    #v(5pt)

    Engineer (UFSC since 2016) and web developer since 2023, with real
    systems in production — from requirements to deployment and operations.

    #v(5pt)

    #contact(
      email: contato.email,
      phone: contato.telefone,
      linkedin: contato.linkedin,
      location: contato.cidade,
    )

    #v(5pt)

    #section(icon: "graduation-cap", "Education")[
      #small()[
        #formacao-en.curso \
        #formacao-en.instituicao \
        #formacao-en.periodo
      ]
    ]

    #section(icon: "code", "Skills")[
      === Languages
      #v(3pt)
      #tags("TypeScript", "JavaScript", "Bash")

      === Frontend
      #v(3pt)
      #tags("React 19", "Next.js", "Tailwind CSS")

      === Backend
      #v(3pt)
      #tags("Node.js", "REST APIs", "RBAC", "Zod", "Webhooks")

      === Data & Infra
      #v(3pt)
      #tags("PostgreSQL", "Redis", "Docker", "Linux", "AWS", "Vercel")

      === Quality & Integrations
      #v(3pt)
      #tags("Jest", "GitHub Actions", "Mercado Pago/PIX")
    ]

    #section(icon: "language", "Languages")[
      #small()[#idiomas-en]
    ]
  ],
)

#section(icon: "user", "Summary")[
  Full-stack developer with an engineering background and end-to-end
  experience on real systems: domain modeling, REST APIs, authentication and
  authorization, integrations (payments, email, storage), automated testing,
  CI and deployment. I value simple architecture, separation of concerns and
  maintainability.
]

#section(icon: "briefcase", "Experience")[
  === Full-Stack Developer
  Freelance — 2023–present

  - Designed and maintain a production supply-chain ERP for a food industry
    company (orders, production, shipping, inventory, pricing profiles, KPI
    dashboard), rewriting and evolving the company's previous management
    system — granular RBAC and layered architecture.
  - Built a digital-products e-commerce with PIX checkout (Mercado Pago):
    HMAC-verified webhooks, event idempotency, automatic email delivery with
    signed URLs (Cloudflare R2), email verification codes and rate limiting.
  - Built an industrial product catalog with a public storefront and admin
    panel (CRUD, CSV import, image uploads, light/dark theme).
  - Automated multi-client PostgreSQL backups with Google Drive uploads,
    configurable retention and Telegram alerts.
  - Practices: integration tests against a real database, versioned
    migrations, CI with lint and tests, usage documentation.

  #tags("Next.js", "TypeScript", "PostgreSQL", "Docker", "Jest", "AWS SES", "Vercel", "Neon")

  #v(10pt)

  === Engineer
  Federal University of Santa Catarina (UFSC) — 2016–present

  - Technical and contract management, technical proposal analysis and
    coordination with multidisciplinary teams.
  - Developed digital solutions and automations for internal processes.
]
