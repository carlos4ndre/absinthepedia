defmodule Absinthepedia.Schema do
  use Absinthe.Schema
  import_types Absinthepedia.Schema.Types

  query do
    @desc "Get all recipes"
    field :recipes, list_of(:recipe) do
      resolve &Absinthepedia.RecipeResolver.all/2
    end

    @desc "Get all ingredients"
    field :ingredients, list_of(:ingredient) do
      resolve &Absinthepedia.IngredientResolver.all/2
    end

    @desc "Get all units"
    field :units, list_of(:unit) do
      resolve &Absinthepedia.UnitResolver.all/2
    end
  end
end
