defmodule Notebooks.Router do
  use Notebooks.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Notebooks do
    pipe_through :browser # Use the default browser stack

    resources "/", NoteController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Notebooks do
  #   pipe_through :api
  # end
end