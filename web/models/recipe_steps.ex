defmodule Absinthepedia.RecipeStep do
  use Absinthepedia.Web, :model
  alias Absinthepedia.Recipe
  alias Absinthepedia.Ingredient
  alias Absinthepedia.Unit

  schema "recipe_steps" do
    field :amount, :float
    belongs_to :recipe, Recipe
    belongs_to :ingredient, Ingredient
    belongs_to :unit, Unit

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
