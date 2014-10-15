defmodule MyAwesomeApp.Router do
  use Phoenix.Router

  get "/", MyAwesomeApp.PageController, :index, as: :pages

end
