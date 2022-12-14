defmodule Auth0AppWeb.AuthController do
  use Auth0AppWeb, :controller
  # alias Auth0AppWeb.Router.Helpers
  # alias Ueberauth.Strategy.Helpers
  plug Ueberauth

  def logout(conn, _params) do
    dbg "miro1234"
    conn
    |> put_flash(:info, "You have been logged out!")
    |> configure_session(drop: true)
    |> clear_session()
    |> redirect(to: "/")
  end

  def callback(%{assigns: %{ueberauth_failure: _fails}} = conn, _params) do
    dbg "miro123"
    conn
    |> put_flash(:error, "Failed to authenticate.")
    |> redirect(to: "/")
  end

  def callback(%{assigns: %{ueberauth_auth: auth}} = conn, _params) do
    dbg ["miro12",conn]
    case UserFromAuth.find_or_create(auth) do
      {:ok, user} ->
        conn
        |> put_flash(:info, "Successfully authenticated as " <> user.name <> ".")
        |> put_session(:current_user, user)
        # |> configure_session(renew: true)
        |> redirect(to: "/")
      {:error, reason} ->
        conn
        |> put_flash(:error, reason)
        |> redirect(to: "/")
    end
  end
end
