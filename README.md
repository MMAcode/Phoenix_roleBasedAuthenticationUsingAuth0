# Auth0App

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix



Miro notes:
mix phx.new /Users/mm/projects/fromGithub/auth0_roleBased/Phoenix_roleBasedAuthenticationUsingAuth0/ --module Auth0App --app auth_zero_app

following this tutorial:
https://auth0.com/blog/elixir-and-phoenix-tutorial-build-an-authenticated-app/
from this section: https://auth0.com/blog/elixir-and-phoenix-tutorial-build-an-authenticated-app/#Authentication-with-Auth0

register with auth0

create new application 
https://manage.auth0.com/dashboard/eu/dev-s1i5tiksk3ykgl41/applications
select regular web app

In the Settings for your new Auth0 client app, add http://0.0.0.0:4000/auth/auth0/callback to the Allowed Callback URLs. SAVAE IT!

