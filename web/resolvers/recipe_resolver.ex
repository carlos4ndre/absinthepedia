defmodule Absinthepedia.RecipeResolver do
  alias Absinthepedia.Recipe
  alias Absinthepedia.Repo

  def all(_args, _info) do
    {:ok, Repo.all(Recipe)}
  end

  def find(%{id: id}, _info) do
    case Repo.get(Recipe, id) do
      nil -> {:error, "Recipe id #{id} not found"}
      recipe -> {:ok, recipe}
    end
  end
end
