require 'rails_helper'

describe "Receipes API" do
    it 'sends a list of receipes' do
        create_list(:recipe, 3)

        get '/api/v1/receipes'

        expect(response).to  be_successful
    end
end
