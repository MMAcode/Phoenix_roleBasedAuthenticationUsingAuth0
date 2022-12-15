defmodule Auth0AppWeb.PrivateHTML do
  use Auth0AppWeb, :html
  use Phoenix.Component

  def privFunc(assigns) do
    ~H"""
    <p>Hello, you are logged in as "<%=@current_user.name %>"; Welcome!</p>
    This is a private function called "privFunc" which is "Component" (functional component) in "private_html" file.
    <br/><br/> This "private_html" file is meant to hold func components also to load all relevant heex files (stored in 'private_hmtl' folder)
    <br/><br/>It was loaded through "router" passing it :somePrivateFunction action (which is caught and treated as somePrivateFunction() in private_controller. )

    <br/><br/>The "private_html" file is loaded through "embed_templates" in "private_controller" file.
    <.somePrivateFile/>
    """
  end

  embed_templates "private_html/*"
end
