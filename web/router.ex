defmodule Eloszka.Router do
  use Eloszka.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Eloszka.Auth, repo: Eloszka.Repo
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Eloszka do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/users", UserController, only: [:new, :create]
    resources "/sessions", SessionController, only: [:new, :create, :delete]
  end

  # Other scopes may use custom stacks.
  # scope "/api", Eloszka do
  #   pipe_through :api
  # end
end
