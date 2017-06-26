defmodule Absinthepedia.Schema.Types do
  use Absinthe.Schema.Notation
  use Absinthe.Relay.Schema
  use Absinthe.Ecto, repo: Absinthepedia.Repo

  object :recipe do
    field :id, :id
    field :description, :string
    field :abv, :float
    field :steps, list_of(:step), resolve: assoc(:steps)
  end

  object :step do
    field :id, :id
    field :amount, :float
    field :ingredient, :ingredient, resolve: assoc(:ingredient)
    field :unit, :unit, resolve: assoc(:unit)
  end

  object :ingredient do
    field :name, :string
    field :description, :string
  end

  object :unit do
    field :name, :string
  end
end
