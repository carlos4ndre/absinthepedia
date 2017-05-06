# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :absinthepedia,
  ecto_repos: [Absinthepedia.Repo]

# Configures the endpoint
config :absinthepedia, Absinthepedia.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "t4QqRCM0s2erqzRwrFNoCjiKZ5geGKOdD1T5wxLUt3dlp1xGCcPCRbC64gwKYpao",
  render_errors: [view: Absinthepedia.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Absinthepedia.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
