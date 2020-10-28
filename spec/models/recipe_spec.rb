require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:image) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:chef_name) }

  it { should have_many(:tags).through(:recipe_tags) }
end
