use Mix.Config

# NOTE: To get SSL working, you will need to set:
#
#     ssl: true,
#     keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#     certfile: System.get_env("SOME_APP_SSL_CERT_PATH"),
#
# Where those two env variables point to a file on disk
# for the key and cert

config :phoenix, Fawkes.Router,
  port: System.get_env("PORT"),
  ssl: false,
  host: "heroku-fup.herokuapp.com",
  cookies: true,
  session_key: "_fawkes_key",
  session_secret: "J0#%EFD!W1W=PS$5F_&(Z7_2I6D6R$DQ+H5!*@D93L9EIMH!GTOX+D)*FF2^@T#5%8%T+%&!RS9CZ"

config :logger, :console,
  level: :info,
  metadata: [:request_id]

