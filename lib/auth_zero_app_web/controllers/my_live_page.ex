defmodule Auth0AppWeb.MyLivePage do
  use Auth0AppWeb, :live_view

  def mount(_par, _sess, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <p>ahoj from public live page</p>
    """
  end
end
