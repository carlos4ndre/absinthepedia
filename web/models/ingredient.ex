defmodule Absinthepedia.Ingredient do
  use Absinthepedia.Web, :model

  schema "ingredients" do
    field :name, :string
    field :description, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :description])
    |> unique_constraint(:name)
    |> validate_required([:name, :description])
  end
end
