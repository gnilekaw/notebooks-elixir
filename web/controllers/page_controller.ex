defmodule Notebooks.PageController do
  use Notebooks.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
