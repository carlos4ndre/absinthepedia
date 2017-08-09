use Mix.Config

config :absinthepedia, Absinthepedia.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: []

config :absinthepedia, Absinthepedia.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{priv/gettext/.*(po)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ]

config :logger, :console, format: "[$level] $message\n"

config :phoenix, :stacktrace_depth, 20

config :absinthepedia, Absinthepedia.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "brewmaster",
  password: "brewmaster",
  database: "absinthepedia",
  hostname: "db",
  pool_size: 10

config :absinthepedia, hostname: "localhost"
