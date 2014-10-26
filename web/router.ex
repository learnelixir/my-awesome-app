defmodule MyAwesomeApp.Router do
  use Phoenix.Router
  
  scope "/" do
    pipe_through :browser
    
    get "/", MyAwesomeApp.PageController, :index, as: :pages
  end

end
