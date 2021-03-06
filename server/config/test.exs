use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :urban, UrbanWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

config :urban, arc_storage_dir: "test/fixtures/test-uploads"

# Configure your database
config :urban, Urban.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "urban_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
