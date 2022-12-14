defmodule Auth0AppWeb.PageController do
  use Auth0AppWeb, :controller

  plug :secure

  defp secure(conn, _params) do
    user = get_session(conn, :current_user)
    dbg user
    case user do
      nil -> conn |> redirect(to: "/auth/auth0")
      # |> fn x -> dbg(["miro025", x]); x end.()
      |> halt
      _ -> assign(conn, :current_user, user)
    end
  end

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home,  layout: false, current_user: get_session(conn, :current_user))
  end
end
