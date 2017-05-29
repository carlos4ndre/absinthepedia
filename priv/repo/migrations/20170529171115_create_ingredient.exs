defmodule Absinthepedia.Repo.Migrations.CreateIngredient do
  use Ecto.Migration

  def change do
    create table(:ingredients) do
      add :name, :string
      add :description, :text

      timestamps()
    end

  end
end
