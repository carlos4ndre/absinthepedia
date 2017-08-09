defmodule Absinthepedia do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(Absinthepedia.Repo, []),
      supervisor(Absinthepedia.Endpoint, []),
    ]

    opts = [strategy: :one_for_one, name: Absinthepedia.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    Absinthepedia.Endpoint.config_change(changed, removed)
    :ok
  end
end
