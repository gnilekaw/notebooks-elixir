defmodule Notebooks.Router do
  use Notebooks.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", Notebooks do
    pipe_through :browser # Use the default browser stack

    resources "/", NoteController
  end
end
