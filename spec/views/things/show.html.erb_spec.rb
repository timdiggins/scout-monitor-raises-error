require 'rails_helper'

RSpec.describe "things/show", type: :view do
  before(:each) do
    @thing = assign(:thing, Thing.create!(
      name: "Name",
      model_number: "Model Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Model Number/)
  end
end
