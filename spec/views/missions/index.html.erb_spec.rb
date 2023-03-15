require 'rails_helper'

RSpec.describe "missions/index", type: :view do
  before(:each) do
    assign(:missions, [
      Mission.create!(),
      Mission.create!()
    ])
  end

  it "renders a list of missions" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
