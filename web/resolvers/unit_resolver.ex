defmodule Absinthepedia.UnitResolver do
  alias Absinthepedia.Unit

  def all(_args, _info) do
    {:ok, Absinthepedia.Repo.all(Unit)}
  end
end
