defmodule Absinthepedia.IngredientResolver do
  alias Absinthepedia.Ingredient

  def all(_args, _info) do
    {:ok, Absinthepedia.Repo.all(Ingredient)}
  end
end
