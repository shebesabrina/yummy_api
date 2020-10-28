require 'rails_helper'

RSpec.describe TagItem, type: :model do
  it { should validate_presence_of(:dietary_restrictions) }

  it { should have_many(:recipe_items).through(:recipe_tag_items) }
end
