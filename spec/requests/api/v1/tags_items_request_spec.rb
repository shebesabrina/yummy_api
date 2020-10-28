require 'rails_helper'

describe "Tags API" do
    it 'sends a list of tags' do
        create_list(:tag_item, 2)
 
        get '/api/v1/tag_items'

        expect(response).to  be_successful

        tags = JSON.parse(response.body, symbolize_names: true)

        expect(tags.count).to eq(2)
        
        tags.each do |tag|     
            expect(tag).to have_key(:id)
            expect(tag[:id]).to be_an(Integer)

            expect(tag).to have_key(:dietary_restrictions)
            expect(tag[:dietary_restrictions]).to be_an(String)
        end
    end

    it "can get one tag by its id" do
        id = create(:tag_item).id
      
        get "/api/v1/tag_items/#{id}"
      
        tag = JSON.parse(response.body, symbolize_names: true)
      
        expect(response).to be_successful
      
        expect(tag).to have_key(:id)
        expect(tag[:id]).to be_an(Integer)

        expect(tag).to have_key(:dietary_restrictions)
        expect(tag[:dietary_restrictions]).to be_an(String)
    end
end