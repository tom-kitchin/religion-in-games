defmodule ReligionInGames.PageController do
  use ReligionInGames.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
