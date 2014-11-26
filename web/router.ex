defmodule MyAwesomeApp.Router do
  use Phoenix.Router
  
  pipeline :browser do
    plug :accepts, ~w(html)
    plug :fetch_session
  end 

  pipeline :api do
    plug :accepts, ~w(json)
  end
  
  scope "/" do
    pipe_through :browser
    
    get "/", MyAwesomeApp.PageController, :index, as: :pages
  end

end
