defmodule Absinthepedia.Unit do
  use Absinthepedia.Web, :model

  schema "unit" do
    field :name, :string, size: 20

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end
