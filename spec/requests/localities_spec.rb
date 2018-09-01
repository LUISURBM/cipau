	require 'rails_helper'

RSpec.describe Api::V1::LocalityController, type: :request do

  describe "GET /localities" do
    before :each do
      FactoryGirl.create_list(:localities, 1)
      get "/api/v1/localities"
    end

    it { have_http_status(200) }
    it 'show all localities' do
      json = JSON.parse(response.body)
      expect(json.length).toeq(Locality.count)
    end
  end
  
end