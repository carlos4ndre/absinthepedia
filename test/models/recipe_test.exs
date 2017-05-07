defmodule Absinthepedia.RecipeTest do
  use Absinthepedia.ModelCase

  alias Absinthepedia.Recipe

  @valid_attrs %{abv: "120.5", description: "some content", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Recipe.changeset(%Recipe{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Recipe.changeset(%Recipe{}, @invalid_attrs)
    refute changeset.valid?
  end
end
