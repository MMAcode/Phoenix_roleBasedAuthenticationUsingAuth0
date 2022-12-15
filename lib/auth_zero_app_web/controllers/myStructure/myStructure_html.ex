defmodule Auth0AppWeb.MyStructure.MyStructureHTML do
  use Auth0AppWeb, :html

  use Phoenix.Component

  def myStructureF(assigns) do
    dbg(__DIR__)

    ~H"""
    my structure <.filef />
    """
  end

  embed_templates "myStructure_html/*"
  embed_templates "/myStructure/myStructure_html/*"
  embed_templates "../myStructure_html/*"
end
