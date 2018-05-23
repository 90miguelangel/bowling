require 'rails_helper'

RSpec.describe GamesController, type: :controller do

  let(:params) { {frames: 'XXXXXXXXXXXX'} }

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      post :create, params: { game: params }
      expect(response).to have_http_status(:success)
    end
  end

end
