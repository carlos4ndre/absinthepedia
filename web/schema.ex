defmodule Absinthepedia.Schema do
  use Absinthe.Schema
  import_types Absinthepedia.Schema.Types

  query do
    field :recipes, list_of(:recipe) do
      resolve &Absinthepedia.RecipeResolver.all/2
    end
  end
end
