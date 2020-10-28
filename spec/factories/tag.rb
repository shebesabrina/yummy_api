FactoryBot.define do
    factory :tag do
        dietary_restrictions { ["gluten-free", "dairy-free", "vegetarian", "vegan"].sample }
    end
  end