require 'rails_helper'

RSpec.describe "/missions", type: :request do
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Mission.create! valid_attributes
      get missions_url
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_mission_url
      expect(response).to be_successful
    end
  end


  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Mission" do
        expect {
          post missions_url, params: { mission: valid_attributes }
        }.to change(Mission, :count).by(1)
      end

      it "redirects to the missions page" do
        post missions_url, params: { mission: valid_attributes }
        expect(response).to redirect_to(missions_url)
      end
    end

    context "with invalid parameters" do
      it "does not create a new Mission" do
        expect {
          post missions_url, params: { mission: invalid_attributes }
        }.to change(Mission, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post missions_url, params: { mission: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        mission = Mission.create! valid_attributes
        patch mission_url(mission), params: { mission: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end
end
