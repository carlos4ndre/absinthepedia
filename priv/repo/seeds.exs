alias Absinthepedia.Repo
alias Absinthepedia.Recipe
alias Absinthepedia.Ingredient
alias Absinthepedia.Unit

##################
## Recipes
##################
Repo.insert!(%Recipe{
             name: "Sazerac",
             description: "The Sazerac is a local New Orleans variation of a Cognac or whiskey cocktail, named for the Sazerac de Forge et Fils brand of Cognac brandy that served as its original main ingredient.",
             abv: 40.00,
           })

Repo.insert!(%Recipe{
             name: "Monkey Gland",
             description: "The Monkey Gland is a cocktail of gin, orange juice, grenadine and absinthe named after a surgical technique of grafting monkey testicle tissue into humans. The practice was started by Dr Serge Voronoff, and was intended to produce longevity.",
             abv: 40.00,
           })

Repo.insert!(%Recipe{
             name: "Death in the Afternoon",
             description: "Death in the Afternoon, also called the Hemingway or the Hemingway Champagne, is a cocktail made up of absinthe and Champagne invented by Ernest Hemingway.",
             abv: 40.00,
           })


##################
## Ingredients
##################
Repo.insert!(%Ingredient{
             name: "Absinthe",
             description: "Green distilled beverage",
           })

Repo.insert!(%Ingredient{
             name: "Champagne",
             description: "Sparkling wine",
           })

Repo.insert!(%Ingredient{
             name: "Cognac",
             description: "Brandy",
           })

Repo.insert!(%Ingredient{
             name: "Gin",
             description: "Spirit derived from juniper berries",
           })

Repo.insert!(%Ingredient{
             name: "Grenadine",
             description: "Non-alcoholic bar syrup",
           })

Repo.insert!(%Ingredient{
             name: "Orange Juice",
             description: "N/A",
           })

Repo.insert!(%Ingredient{
             name: "Sugar",
             description: "N/A",
           })


##################
## Units
##################
Repo.insert!(%Unit{name: "unit"}) # unit
Repo.insert!(%Unit{name: "kg"})   # kilograms
Repo.insert!(%Unit{name: "l"})    # liter
Repo.insert!(%Unit{name: "st"})   # shouts
