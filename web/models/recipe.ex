defmodule Absinthepedia.Recipe do
  use Absinthepedia.Web, :model
  alias Absinthepedia.RecipeStep

  schema "recipes" do
    field :name, :string
    field :description, :string
    field :abv, :decimal
    has_many :steps, RecipeStep

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :description, :abv])
    |> unique_constraint(:name)
    |> validate_required([:name, :description, :abv])
  end
end
