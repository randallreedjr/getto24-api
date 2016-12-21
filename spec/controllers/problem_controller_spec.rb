require 'rails_helper'

RSpec.describe ProblemController, type: :controller do

  describe "GET #generate" do
    it "returns http success" do
      get :generate
      expect(response).to have_http_status(:success)
    end

    it "returns a problem" do
      get :generate
      json = JSON.parse(response.body)
      expect(json).to have_key("problem")
    end

    it "generates a problem with four single digit numbers" do
      get :generate
      problem = JSON.parse(response.body)["problem"]
      number_count = problem.count {|i| /\d{1}/.match(i) }
      expect(problem.length).to eq(4)
      expect(number_count).to eq(4)
    end
  end

  describe "GET #check" do
    it "returns http success" do
      get :check
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #solve" do
    it "returns http success" do
      get :solve
      expect(response).to have_http_status(:success)
    end
  end

end
