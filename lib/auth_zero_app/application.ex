defmodule Auth0App.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      Auth0AppWeb.Telemetry,
      # Start the Ecto repository
      Auth0App.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Auth0App.PubSub},
      # Start Finch
      {Finch, name: Auth0App.Finch},
      # Start the Endpoint (http/https)
      Auth0AppWeb.Endpoint
      # Start a worker by calling: Auth0App.Worker.start_link(arg)
      # {Auth0App.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Auth0App.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Auth0AppWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
