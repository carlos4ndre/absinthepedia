use Mix.Config

config :absinthepedia,
  ecto_repos: [Absinthepedia.Repo]

config :absinthepedia, Absinthepedia.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "t4QqRCM0s2erqzRwrFNoCjiKZ5geGKOdD1T5wxLUt3dlp1xGCcPCRbC64gwKYpao",
  render_errors: [view: Absinthepedia.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Absinthepedia.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

import_config "#{Mix.env}.exs"
