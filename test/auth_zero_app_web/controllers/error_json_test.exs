defmodule Auth0AppWeb.ErrorJSONTest do
  use Auth0AppWeb.ConnCase, async: true

  test "renders 404" do
    assert Auth0AppWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert Auth0AppWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
