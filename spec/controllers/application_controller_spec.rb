require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  describe 'root route' do
    it 'renders page_not_found action' do
      expect(get: root_url(subdomain: nil)).to route_to(
        controller: "application",
        action: "page_not_found")
    end
  end

  describe '#page_not_found' do
    it 'returns 404 status' do
      get :page_not_found
      expect(response).to be_not_found
    end

    it 'renders a json error message' do
      get :page_not_found
      json = JSON.parse(response.body)
      expect(json).to eq({"error" => "page not found"})
    end
  end
end
