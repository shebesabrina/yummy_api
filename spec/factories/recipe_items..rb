FactoryBot.define do
  factory :recipe_item do
    title { Faker::Food.dish }
    image { Faker::Avatar.image }
    description { Faker::Food.description }
    chef_name { Faker::TvShows::GameOfThrones.character }
  end
end
