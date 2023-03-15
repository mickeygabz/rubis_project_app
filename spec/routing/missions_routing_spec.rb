require "rails_helper"

RSpec.describe MissionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/missions").to route_to("missions#index")
    end

    it "routes to #new" do
      expect(get: "/missions/new").to route_to("missions#new")
    end

    it "routes to #create" do
      expect(post: "/missions").to route_to("missions#create")
    end
  end
end
