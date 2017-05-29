defmodule Absinthepedia.IngredientTest do
  use Absinthepedia.ModelCase

  alias Absinthepedia.Ingredient

  @valid_attrs %{description: "some content", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Ingredient.changeset(%Ingredient{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Ingredient.changeset(%Ingredient{}, @invalid_attrs)
    refute changeset.valid?
  end
end
