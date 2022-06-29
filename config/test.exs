import Config

config :my_app, MyApp.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "123",
  database: "blockscout",
  hostname: "postgres",
  pool_size: 10

# Print only warnings and errors during test

config :logger, :console, level: :warn

config :logger, :ecto,
  level: :warn,
  path: Path.absname("logs/test/ecto.log")

config :logger, :error, path: Path.absname("logs/test/error.log")

config :explorer, Explorer.ExchangeRates,
  source: Explorer.ExchangeRates.Source.NoOpSource,
  store: :none

config :explorer, Explorer.KnownTokens, store: :none
