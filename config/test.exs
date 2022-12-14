import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :auth_zero_app, Auth0App.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "auth_zero_app_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :auth_zero_app, Auth0AppWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "qPYSG51K6Xi1iqpAoEOaxVG159H7CYN/zyc2W0uVzIarLIgBxcYB3nniGls9m7iR",
  server: false

# In test we don't send emails.
config :auth_zero_app, Auth0App.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters.
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
