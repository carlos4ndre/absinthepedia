defmodule Absinthepedia.IngredientResolver do
  alias Absinthepedia.Ingredient
  alias Absinthepedia.Repo

  def all(_args, _info) do
    {:ok, Repo.all(Ingredient)}
  end

  def find(%{id: id}, _info) do
    case Repo.get(Ingredient, id) do
      nil -> {:error, "Ingredient id #{id} not found"}
      ingredient -> {:ok, ingredient}
    end
  end
end
