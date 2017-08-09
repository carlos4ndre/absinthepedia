defmodule Absinthepedia.Mixfile do
  use Mix.Project

  def project do
    [
      app: :absinthepedia,
      version: "0.0.1",
      elixir: "~> 1.5",
      elixirc_paths: elixirc_paths(Mix.env),
      compilers: [:phoenix, :gettext] ++ Mix.compilers,
      start_permanent: Mix.env == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  def application do
    [
      mod: {Absinthepedia, []},
      applications: [:phoenix, :phoenix_pubsub, :phoenix_html, :cowboy, :logger, :gettext,
                     :phoenix_ecto, :postgrex, :absinthe_relay, :plug_static_index_html]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  defp deps do
    [
      {:phoenix, "~> 1.2.1"},
      {:phoenix_pubsub, "~> 1.0"},
      {:phoenix_ecto, "~> 3.0"},
      {:postgrex, ">= 0.0.0"},
      {:phoenix_html, "~> 2.6"},
      {:phoenix_live_reload, "~> 1.0", only: :dev},
      {:gettext, "~> 0.11"},
      {:cowboy, "~> 1.0"},
      {:absinthe, "~> 1.3.0"},
      {:absinthe_plug, "~> 1.3.1"},
      {:absinthe_ecto, git: "https://github.com/absinthe-graphql/absinthe_ecto.git"},
      {:absinthe_relay, "~> 1.3"},
      {:cors_plug, "~> 1.3"},
      {:plug_static_index_html, "~> 0.1.2"},
      {:poison, "~> 3.1.0", override: true},
    ]
  end

  defp aliases do
    [
      "ecto.setup": ["ecto.create", "ecto.migrate", "db.populate"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      "db.populate": ["run priv/repo/seeds.exs"],
      "test": ["ecto.create --quiet", "ecto.migrate", "test"]
    ]
  end
end
