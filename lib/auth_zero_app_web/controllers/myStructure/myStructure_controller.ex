defmodule Auth0AppWeb.MyStructure.MyStructureController do
  use Auth0AppWeb, :controller

  def myStructure(conn, _params) do
    render(conn, :myStructureF)
    # render(conn, :filef)
  end
end
