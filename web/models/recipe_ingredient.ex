defmodule Absinthepedia.RecipeIngredient do
  use Absinthepedia.Web, :model

  schema "recipe_ingredients" do
    field :amount, :float
    belongs_to :recipe, Absinthepedia.Recipe
    belongs_to :ingredient, Absinthepedia.Ingredient
    belongs_to :unit, Absinthepedia.Unit

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:amount])
    |> validate_required([:amount])
  end
end
