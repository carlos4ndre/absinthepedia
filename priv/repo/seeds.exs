alias Absinthepedia.Repo
alias Absinthepedia.Recipe
alias Absinthepedia.Ingredient
alias Absinthepedia.Unit
alias Absinthepedia.RecipeStep

#############
## Recipes
#############
sazeract = Repo.insert!(%Recipe{
  name: "Sazerac",
  description: "The Sazerac is a local New Orleans variation of a Cognac or whiskey cocktail, named for the Sazerac de Forge et Fils brand of Cognac brandy that served as its original main ingredient.",
  abv: 40.00,
})

monkey_gland = Repo.insert!(%Recipe{
  name: "Monkey Gland",
  description: "The Monkey Gland is a cocktail of gin, orange juice, grenadine and absinthe named after a surgical technique of grafting monkey testicle tissue into humans. The practice was started by Dr Serge Voronoff, and was intended to produce longevity.",
  abv: 40.00,
})

death_in_the_afternoon = Repo.insert!(%Recipe{
  name: "Death in the Afternoon",
  description: "Death in the Afternoon, also called the Hemingway or the Hemingway Champagne, is a cocktail made up of absinthe and Champagne invented by Ernest Hemingway.",
  abv: 40.00,
})


################
## Ingredients
################
absinthe = Repo.insert!(%Ingredient{
  name: "Absinthe",
  description: "Green distilled beverage",
})

champagne = Repo.insert!(%Ingredient{
  name: "Champagne",
  description: "Sparkling wine",
})

cognac = Repo.insert!(%Ingredient{
  name: "Cognac",
  description: "Brandy",
})

gin = Repo.insert!(%Ingredient{
  name: "Gin",
  description: "Spirit derived from juniper berries",
})

grenadine = Repo.insert!(%Ingredient{
  name: "Grenadine",
  description: "Non-alcoholic bar syrup",
})

orange_juice = Repo.insert!(%Ingredient{
  name: "Orange Juice",
  description: "N/A",
})

sugar = Repo.insert!(%Ingredient{
  name: "Sugar",
  description: "N/A",
})

bitters = Repo.insert!(%Ingredient{
  name: "Bitters",
  description: "Alcoholic drink made with botanical matter with a bitter taste",
})


##########
## Units
##########
liter = Repo.insert!(%Unit{name: "liter"})
shots = Repo.insert!(%Unit{name: "st"})


#######################
## Recipe Steps
#######################
# TODO: use insert_all instead of insert

#sazeract
Repo.insert!(%RecipeStep{
  amount: 0.03,
  recipe: sazeract,
  ingredient: cognac,
  unit: liter,
})
Repo.insert!(%RecipeStep{
  amount: 0.01,
  recipe: sazeract,
  ingredient: absinthe,
  unit: liter,
})
Repo.insert!(%RecipeStep{
  amount: 1.0,
  recipe: sazeract,
  ingredient: sugar,
  unit: shots,
})
Repo.insert!(%RecipeStep{
  amount: 2.0,
  recipe: sazeract,
  ingredient: bitters,
  unit: shots,
})


# monkey gland
Repo.insert!(%RecipeStep{
  amount: 0.05,
  recipe: monkey_gland,
  ingredient: gin,
  unit: liter,
})
Repo.insert!(%RecipeStep{
  amount: 0.03,
  recipe: monkey_gland,
  ingredient: orange_juice,
  unit: liter,
})
Repo.insert!(%RecipeStep{
  amount: 0.01,
  recipe: monkey_gland,
  ingredient: absinthe,
  unit: liter,
})
Repo.insert!(%RecipeStep{
  amount: 0.01,
  recipe: monkey_gland,
  ingredient: grenadine,
  unit: liter,
})


# death in the afternoon
Repo.insert!(%RecipeStep{
  amount: 1.0,
  recipe: death_in_the_afternoon,
  ingredient: absinthe,
  unit: shots,
})
Repo.insert!(%RecipeStep{
  amount: 1.0,
  recipe: death_in_the_afternoon,
  ingredient: champagne,
  unit: shots,
})
