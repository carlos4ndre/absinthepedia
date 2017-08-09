use Mix.Config

config :absinthepedia, Absinthepedia.Endpoint,
  server: true,
  http: [port: {:system, "PORT"}],
  url: [host: "example.com", port: 80],
  cache_static_manifest: "priv/static/manifest.json"

config :logger, level: :info

import_config "prod.secret.exs"

config :phoenix, hostname: System.get_env("PHOENIX_HOSTNAME")
