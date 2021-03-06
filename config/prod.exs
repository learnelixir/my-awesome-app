use Mix.Config

# ## SSL Support
#
# To get SSL working, you will need to set:
#
#     https: [port: 443,
#             keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#             certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.

config :phoenix, MyAwesomeApp.Router,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT") || 4000],
  secret_key_base: "oXLywfYvLeqUBlTmg2ly4HL64UpJycMiwqG2OlN95TM30AwXqXEFbwjAbD/tgnfDDNpqFeEcyCEG9U6SXRROeQ=="

config :logger, :console,
  level: :info
