defmodule Absinthepedia.Repo.Migrations.CreateRecipeIngredient do
  use Ecto.Migration

  def change do
    create table(:recipe_steps) do
      add :amount, :float
      add :recipe_id, references(:recipes, on_delete: :nothing)
      add :ingredient_id, references(:ingredients, on_delete: :nothing)
      add :unit_id, references(:units, on_delete: :nothing)

      timestamps()
    end

    create index(:recipe_steps, [:recipe_id])
    create index(:recipe_steps, [:ingredient_id])
    create index(:recipe_steps, [:unit_id])

  end
end
