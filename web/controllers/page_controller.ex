defmodule Absinthepedia.PageController do
  use Absinthepedia.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
