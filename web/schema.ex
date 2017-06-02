defmodule Absinthepedia.Schema do
  use Absinthe.Schema
  import_types Absinthepedia.Schema.Types

  @desc "Get all recipes"
  query do
    field :recipes, list_of(:recipe) do
      resolve &Absinthepedia.RecipeResolver.all/2
    end
  end

  @desc "Get all ingredients"
  query do
    field :ingredients, list_of(:ingredient) do
      resolve &Absinthepedia.IngredientResolver.all/2
    end
  end

  @desc "Get all units"
  query do
    field :units, list_of(:unit) do
      resolve $Absinthepedia.UnitResolver.all/2
    end
  end
end
