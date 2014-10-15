use Mix.Config

config :phoenix, MyAwesomeApp.Router,
  port: System.get_env("PORT") || 4000,
  ssl: false,
  host: "localhost",
  cookies: true,
  session_key: "_my_awesome_app_key",
  session_secret: "7308E_031%IM)=7MNU91*1J9KVXE9$B1SWYYZ%P_+C+DBNFH7!MXQOQ+C&G66@6H682",
  debug_errors: true

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug


