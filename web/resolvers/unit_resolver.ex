defmodule Absinthepedia.UnitResolver do
  alias Absinthepedia.Unit
  alias Absinthepedia.Repo

  def all(_args, _info) do
    {:ok, Repo.all(Unit)}
  end

  def find(%{id: id}, _info) do
    case Repo.get(Unit, id) do
      nil -> {:error, "Unit id #{id} not found"}
      unit -> {:ok, unit}
    end
  end
end
