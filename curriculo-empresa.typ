// Versão EMPRESA — foco em processo seletivo (CLT/PJ), ATS-friendly.
// Compilar: typst compile curriculo-empresa.typ out/curriculo-empresa.pdf

#import "template.typ": cv, secao, entrada, cor-suave
#import "comum.typ": contatos, formacao, idiomas

#show: cv.with(
  nome: "Ramon Melo",
  titulo: "Desenvolvedor Full-Stack — TypeScript · React · Node.js · PostgreSQL",
  contatos: contatos,
)

#secao("Resumo")[
  Desenvolvedor full-stack com base em engenharia — gestão técnica na UFSC desde
  2016 — e desenvolvimento web profissional desde 2023, com sistemas reais em
  produção. Experiência ponta a ponta: modelagem de domínio, APIs REST,
  autenticação e autorização, integrações (pagamentos, e-mail, armazenamento),
  testes automatizados, CI e deploy. Valorizo arquitetura simples, separação de
  responsabilidades e manutenibilidade.
]

#secao("Habilidades")[
  - *Linguagens:* TypeScript, JavaScript, Bash; familiaridade com Java e C++
  - *Frontend:* React 19, Next.js (App Router e Pages Router), Tailwind CSS, SEO técnico
  - *Backend:* Node.js, APIs REST, autenticação por sessão, autorização granular
    (RBAC), validação com Zod, webhooks, rate limiting, e-mail transacional
  - *Dados:* PostgreSQL (modelagem, migrations com node-pg-migrate), Redis
  - *Testes e qualidade:* Jest (integração e unitário), GitHub Actions (CI),
    ESLint, Prettier, Conventional Commits
  - *Infraestrutura:* Docker Compose, Linux/VPS, Vercel, Neon, Cloudflare R2,
    Cloudinary, AWS (SES, SNS, EC2), DNS, rclone
  - *Integrações:* Mercado Pago (PIX + webhooks com verificação HMAC),
    Telegram Bot API, Google Analytics
  - *Outros:* Git, análise de requisitos, documentação técnica
]

#secao("Experiência")[
  #entrada(titulo: "Desenvolvedor Full-Stack", org: "Autônomo", periodo: "2023 – atual")[
    - Projetei e mantenho em produção um ERP de cadeia de suprimentos para
      indústria alimentícia (pedidos, produção, expedição, estoque, perfis de
      preço, dashboard de KPIs), reescrevendo e evoluindo o sistema de gestão
      anterior da empresa — RBAC granular e arquitetura em camadas
      (repositories/services) com Next.js 14, TypeScript, PostgreSQL, Docker e Jest.
    - Desenvolvi e-commerce de produtos digitais com checkout PIX (Mercado Pago):
      webhooks com verificação de assinatura HMAC, idempotência de eventos,
      entrega automática por e-mail com URLs assinadas (Cloudflare R2),
      verificação de e-mail por código e rate limiting — Next.js 16, React 19,
      PostgreSQL e AWS SES.
    - Construí catálogo industrial com área pública e painel administrativo
      (CRUD de produtos e usuários, importação CSV, upload de imagens, tema
      claro/escuro) — Next.js, PostgreSQL (Neon) e Cloudinary.
    - Automatizei backups PostgreSQL multi-cliente com upload para Google Drive,
      retenção configurável e alertas via Telegram — Bash, pg_dump, rclone, cron.
    - Práticas em todos os projetos: testes de integração contra banco real,
      migrations versionadas, CI com lint e testes, documentação de uso.
  ]

  #entrada(titulo: "Engenheiro", org: "Universidade Federal de Santa Catarina (UFSC)", periodo: "2016 – atual")[
    - Gestão técnica e de contratos, análise de propostas técnicas e coordenação
      com equipes multidisciplinares.
    - Desenvolvimento de soluções digitais e automações para processos internos.
  ]
]

#secao("Formação")[
  *#formacao.curso* — #formacao.instituicao #h(1fr) #text(fill: cor-suave)[#formacao.periodo]
]

#secao("Idiomas")[
  #idiomas
]
