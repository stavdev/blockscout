import Config

config :my_app, MyApp.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "123",
  database: "blockscout",
  hostname: "postgres",
  pool_size: 10


# DO NOT make it `:debug` or all Ecto logs will be shown for indexer
config :logger, :console, level: :info

config :logger, :ecto,
  level: :debug,
  path: Path.absname("logs/dev/ecto.log")

config :logger, :error, path: Path.absname("logs/dev/error.log")
