require 'rails_helper'

RSpec.describe RecipeTagItem, type: :model do
  it { should belong_to(:tag_item) } 
  it { should belong_to(:recipe_item) } 
end
