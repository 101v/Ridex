# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ridex,
  ecto_repos: [Ridex.Repo]

# Configures the endpoint
config :ridex, RidexWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2NQFDUlmg6OLybFivstAftVc6Jw9xEXVz5HlHQlhmQ3nxgomQp0mUZsRvI/qIGVM",
  render_errors: [view: RidexWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Ridex.PubSub,
  live_view: [signing_salt: "tnyppa85"]

# Configure the jwt token
config :ridex, Ridex.Guardian,
  issuer: "ridex",
  secret_key: "j6MA6ttH2he0IJiBUE2fw0mU5QlIC5M6qxfl95x2c6GxnU/iB26PhDjfUfseG2lO"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
