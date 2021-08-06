# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_view_todus,
  ecto_repos: [LiveViewTodus.Repo]

# Configures the endpoint
config :live_view_todus, LiveViewTodusWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0m1AGAsZ6X9r7hf0c3wAPM5CAXDAQMJYg8wf5X0QHPq35X2DakWw7+CGhZwcHnMY",
  render_errors: [view: LiveViewTodusWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveViewTodus.PubSub,
  live_view: [signing_salt: "nHz315Wd"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
