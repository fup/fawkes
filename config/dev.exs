use Mix.Config

config :phoenix, Fawkes.Router,
  port: System.get_env("PORT") || 4000,
  ssl: false,
  host: "localhost",
  cookies: true,
  session_key: "_fawkes_key",
  session_secret: "J0#%EFD!W1W=PS$5F_&(Z7_2I6D6R$DQ+H5!*@D93L9EIMH!GTOX+D)*FF2^@T#5%8%T+%&!RS9CZ",
  debug_errors: true

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug


