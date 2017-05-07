defmodule Absinthepedia.Recipe do
  use Absinthepedia.Web, :model

  schema "recipes" do
    field :name, :string
    field :description, :string
    field :abv, :decimal

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :description, :abv])
    |> validate_required([:name, :description, :abv])
  end
end
