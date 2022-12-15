defmodule Auth0AppWeb.PublicController do
  use Auth0AppWeb, :controller
  def home_public(conn, _params) do
    # text(conn, "Hello world! from public controller")
    render(conn, "pub.html")
  end
end
