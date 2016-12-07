# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :religion_in_games,
  ecto_repos: [ReligionInGames.Repo]

# Configures the endpoint
config :religion_in_games, ReligionInGames.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gvPMUM928iOlFpBk29J37N18hlgTr0m4GT4DxvQN2JpQvpb2aiHiHbhD8OQMhKz8",
  render_errors: [view: ReligionInGames.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ReligionInGames.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Slim for templates
config :phoenix, :template_engines,
  slim: PhoenixSlime.Engine,
  slime: PhoenixSlime.Engine

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
