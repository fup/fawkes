# This file is responsible for configuring your application
use Mix.Config

# Note this file is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project.

config :phoenix, Fawkes.Router,
  port: System.get_env("PORT"),
  ssl: false,
  static_assets: true,
  cookies: true,
  session_key: "_fawkes_key",
  session_secret: "J0#%EFD!W1W=PS$5F_&(Z7_2I6D6R$DQ+H5!*@D93L9EIMH!GTOX+D)*FF2^@T#5%8%T+%&!RS9CZ",
  catch_errors: true,
  debug_errors: false,
  error_controller: Fawkes.PageController

config :phoenix, :code_reloader,
  enabled: false

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. Note, this must remain at the bottom of
# this file to properly merge your previous config entries.
import_config "#{Mix.env}.exs"
