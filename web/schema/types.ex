defmodule Absinthepedia.Schema.Types do
  use Absinthe.Schema.Notation

  object :recipe do
    field :id, :id
    field :description, :string
    field :abv, :float
  end

  object :ingredient do
    field :name, :string
    field :description, :string
  end
end
