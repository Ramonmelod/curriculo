// Version FREELANCE (EN) — client acquisition, Metronic layout.
// Compile: typst compile curriculo-freelance-en.typ out/curriculo-freelance-en.pdf

#import "@preview/metronic:1.0.0": *
#import "comum.typ": contato, formacao-en, idiomas-en

#theme(
  accent-color: rgb("1F4E5F"),
  background-color: rgb("F2F0EF"),
)

#show: resume-page.with(
  sidebar: [
    = Ramon Melo

    #medium("Full-Stack Web Developer")

    #v(8pt)

    Custom web systems for businesses — I design, build and operate complete
    applications in production, from planning to deployment, domains/DNS and
    operations.

    #v(8pt)

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

    #section(icon: "briefcase", "Experience")[
      #small()[
        Engineer — UFSC (2016–present) \
        Technical management and internal digital solutions.
      ]
    ]

    #section(icon: "code", "Stack")[
      #tags(
        "TypeScript", "Node.js", "React", "Next.js",
        "PostgreSQL", "Tailwind", "REST APIs", "Docker",
        "Mercado Pago/PIX", "AWS", "Vercel", "Neon",
        "Cloudinary", "Cloudflare R2", "Jest",
        "GitHub Actions", "Git", "Linux", "Bash",
      )
    ]

    #section(icon: "language", "Languages")[
      #small()[#idiomas-en]
    ]
  ],
)

#section(icon: "rocket", "Projects in production")[
  === Industrial Management ERP
  Moreira Alimentos — food industry

  Supply-chain system in daily operation (orders, production, shipping,
  inventory, pricing profiles, KPIs), built to replace and evolve the
  company's previous management system. Role-based access and internal
  notifications.

  #tags("Next.js", "TypeScript", "PostgreSQL", "Docker", "Vercel")

  #v(4pt)

  === Digital Products E-commerce
  Frutos Feito à Mão

  PIX checkout (Mercado Pago), automatic webhook confirmation with signature
  verification and email delivery with a secure download link. Admin panel.

  #tags("Next.js", "PostgreSQL", "Mercado Pago", "Cloudflare R2")

  #v(4pt)

  === Product Catalog
  Movear Automação — industrial hydraulics & automation

  Public storefront + admin panel (catalog, users, home carousel).
  Spreadsheet imports and cloud image management.

  #tags("Next.js", "Tailwind", "PostgreSQL (Neon)", "Cloudinary")

  #v(4pt)

  === Institutional Website
  Nubia Melo Insurance Broker — nubiacorretora.com.br

  Static site with full SEO and WhatsApp integration.

  #tags("HTML", "CSS", "JavaScript", "SEO")

  #v(4pt)

  === Infrastructure Automation
  Multi-client PostgreSQL backup system

  Scheduled backups with Google Drive uploads, per-client retention and
  Telegram alerts.

  #tags("Bash", "pg_dump", "rclone", "cron", "Telegram Bot API")
]

#section(icon: "wrench", "Services")[
  Requirements and technical proposal · Architecture and full-stack
  development · Integrations (payments, email, APIs) · Deployment,
  domains/DNS and operations · Process automation
]
