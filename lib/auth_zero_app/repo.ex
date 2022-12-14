defmodule Auth0App.Repo do
  use Ecto.Repo,
    otp_app: :auth_zero_app,
    adapter: Ecto.Adapters.Postgres
end
