# This file is responsible for configuring your application
use Mix.Config

# Note this file is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project.

config :phoenix, MyAwesomeApp.Router,
  port: System.get_env("PORT"),
  ssl: false,
  static_assets: true,
  cookies: true,
  session_key: "_my_awesome_app_key",
  session_secret: "7308E_031%IM)=7MNU91*1J9KVXE9$B1SWYYZ%P_+C+DBNFH7!MXQOQ+C&G66@6H682",
  catch_errors: true,
  debug_errors: false,
  error_controller: MyAwesomeApp.PageController

config :phoenix, :code_reloader,
  enabled: false

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. Note, this must remain at the bottom of
# this file to properly merge your previous config entries.
import_config "#{Mix.env}.exs"
