require 'rails_helper'

RSpec.describe "things/index", type: :view do
  before(:each) do
    assign(:things, [
      Thing.create!(
        name: "Name",
        model_number: "Model Number"
      ),
      Thing.create!(
        name: "Name",
        model_number: "Model Number"
      )
    ])
  end

  it "renders a list of things" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Model Number".to_s, count: 2
  end
end
