defmodule Auth0AppWeb.PageController do
  import Auth0AppWeb.Router, only: [secure: 2]
  use Auth0AppWeb, :controller
  plug :secure

  def private(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    # render(conn, :home,  layout: false, current_user: get_session(conn, :current_user))
    render(conn, :homx, layout: false, current_user: get_session(conn, :current_user))
  end
end
