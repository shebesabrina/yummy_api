FactoryBot.define do
    factory :tag_item do
        dietary_restrictions { ["gluten-free", "dairy-free", "vegetarian", "vegan"].sample }
    end
  end