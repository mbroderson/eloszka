defmodule Eloszka.PageController do
  use Eloszka.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
