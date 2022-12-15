defmodule Auth0AppWeb.PrivateController do
  use Auth0AppWeb, :controller

  def somePrivateFunction(conn, _params) do
    dbg conn.assigns.current_user
    # render(conn, :privFunc, layout: false)
    render(conn, :privFunc)
    # render(conn, :somePrivateFile)
  end

end
