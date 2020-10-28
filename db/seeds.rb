recipes = Recipe.create(
        title: Faker::Food.dish,
        image: Faker::Avatar.image,
        description: Faker::Food.description,
        chef_name: Faker::TvShows::GameOfThrones.character
)

restrictions = ["gluten-free", "dairy-free", "vegetarian", "vegan"].sample
tags = Tag.create(
    dietary_restrictions: restrictions
)

RecipeTag.create(
    recipe_id: recipes.id,
    tag_id: tags.id
)