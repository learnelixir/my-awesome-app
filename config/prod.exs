use Mix.Config

# NOTE: To get SSL working, you will need to set:
#
#     ssl: true,
#     keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#     certfile: System.get_env("SOME_APP_SSL_CERT_PATH"),
#
# Where those two env variables point to a file on disk
# for the key and cert

config :phoenix, MyAwesomeApp.Router,
  port: System.get_env("PORT"),
  ssl: false,
  host: "example.com",
  cookies: true,
  session_key: "_my_awesome_app_key",
  session_secret: "7308E_031%IM)=7MNU91*1J9KVXE9$B1SWYYZ%P_+C+DBNFH7!MXQOQ+C&G66@6H682"

config :logger, :console,
  level: :info,
  metadata: [:request_id]

