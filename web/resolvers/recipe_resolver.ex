defmodule Absinthepedia.RecipeResolver do
  alias Absinthepedia.Recipe

  def all(_args, _info) do
    {:ok, Absinthepedia.Repo.all(Recipe)}
  end
end
