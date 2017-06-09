defmodule Absinthepedia.Schema do
  use Absinthe.Schema
  import_types Absinthepedia.Schema.Types

  query do
    @desc "Get all recipes"
    field :recipes, list_of(:recipe) do
      resolve &Absinthepedia.RecipeResolver.all/2
    end

    @desc "Get a recipe by id"
    field :recipe, type: :recipe do
      arg :id, non_null(:id)
      resolve &Absinthepedia.RecipeResolver.find/2
    end

    @desc "Get all ingredients"
    field :ingredients, list_of(:ingredient) do
      resolve &Absinthepedia.IngredientResolver.all/2
    end

    @desc "Get an ingredient by id"
    field :ingredient, type: :ingredient do
      arg :id, non_null(:id)
      resolve &Absinthepedia.IngredientResolver.find/2
    end

    @desc "Get all units"
    field :units, list_of(:unit) do
      resolve &Absinthepedia.UnitResolver.all/2
    end

    @desc "Get an unit by id"
    field :unit, type: :unit do
      arg :id, non_null(:id)
      resolve &Absinthepedia.UnitResolver.find/2
    end
  end
end
