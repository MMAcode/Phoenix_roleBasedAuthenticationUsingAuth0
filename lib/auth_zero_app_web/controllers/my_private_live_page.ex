defmodule Auth0AppWeb.MyPrivateLivePage do
  use Auth0AppWeb, :live_view

  def mount(_par, session, socket) do
    dbg ["session in private live:", session]
    dbg ["assigns in private live:", socket.assigns]
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <p>ahoj from private live page</p>
    """
  end
end
