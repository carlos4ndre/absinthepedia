defmodule Absinthepedia.Repo.Migrations.CreateIngredient do
  use Ecto.Migration

  def change do
    create table(:ingredients) do
      add :name, :string
      add :description, :text

      timestamps()
    end

    create unique_index(:ingredients, [:name])
  end
end
