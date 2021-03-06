defmodule Absinthepedia.Repo.Migrations.CreateRecipe do
  use Ecto.Migration

  def change do
    create table(:recipes) do
      add :name, :string
      add :description, :text
      add :abv, :decimal

      timestamps()
    end

    create unique_index(:recipes, [:name])
  end
end
