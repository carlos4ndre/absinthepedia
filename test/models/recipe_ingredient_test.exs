defmodule Absinthepedia.RecipeIngredientTest do
  use Absinthepedia.ModelCase

  alias Absinthepedia.RecipeIngredient

  @valid_attrs %{amount: "120.5"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = RecipeIngredient.changeset(%RecipeIngredient{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = RecipeIngredient.changeset(%RecipeIngredient{}, @invalid_attrs)
    refute changeset.valid?
  end
end
