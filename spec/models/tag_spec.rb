require 'rails_helper'

RSpec.describe Tag, type: :model do
  it { should validate_presence_of(:dietary_restrictions) }

  it { should have_many(:recipes).through(:recipe_tags) }
end