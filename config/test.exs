use Mix.Config

config :absinthepedia, Absinthepedia.Endpoint,
  http: [port: 4001],
  server: false

config :logger, level: :warn

config :absinthepedia, Absinthepedia.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "absinthepedia_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :absinthepedia, hostname: "localhost"
