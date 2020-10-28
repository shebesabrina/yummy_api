require 'rails_helper'

describe "Recipe Items API" do
    it 'sends a list of recipe items' do
        create_list(:recipe_item, 3)

        get '/api/v1/recipe_items'

        expect(response).to  be_successful

        recipe_items = JSON.parse(response.body, symbolize_names: true)

        expect(recipe_items.count).to eq(3)
        
        recipe_items.each do |recipe|    
            expect(recipe).to have_key(:id)
            expect(recipe[:id]).to be_an(Integer)

            expect(recipe).to have_key(:title)
            expect(recipe[:title]).to be_an(String)

            expect(recipe).to have_key(:image)
            expect(recipe[:image]).to be_an(String)

            expect(recipe).to have_key(:description)
            expect(recipe[:description]).to be_an(String)

            expect(recipe).to have_key(:chef_name)
            expect(recipe[:chef_name]).to be_an(String)
        end
    end

    it "can get one recipe item by its id" do
        id = create(:recipe_item).id
      
        get "/api/v1/recipe_items/#{id}"
      
        recipe_item = JSON.parse(response.body, symbolize_names: true)
      
        expect(response).to be_successful
      
        expect(recipe_item).to have_key(:id)
        expect(recipe_item[:id]).to be_an(Integer)

        expect(recipe_item).to have_key(:title)
        expect(recipe_item[:title]).to be_an(String)

        expect(recipe_item).to have_key(:image)
        expect(recipe_item[:image]).to be_an(String)

        expect(recipe_item).to have_key(:description)
        expect(recipe_item[:description]).to be_an(String)

        expect(recipe_item).to have_key(:chef_name)
        expect(recipe_item[:chef_name]).to be_an(String)
    end
end
