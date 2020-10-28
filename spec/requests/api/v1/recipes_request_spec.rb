require 'rails_helper'

describe "Recipes API" do
    it 'sends a list of recipes' do
        create_list(:recipe, 3)

        get '/api/v1/recipes'

        expect(response).to  be_successful

        recipes = JSON.parse(response.body, symbolize_names: true)

        expect(recipes.count).to eq(3)
        
        recipes.each do |recipe|    
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

    it "can get one recipe by its id" do
        id = create(:recipe).id
      
        get "/api/v1/recipes/#{id}"
      
        recipe = JSON.parse(response.body, symbolize_names: true)
      
        expect(response).to be_successful
      
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
