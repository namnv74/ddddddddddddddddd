require 'rails_helper'

RSpec.describe "animals/index", type: :view do
  before(:each) do
    assign(:animals, [
      Animal.create!(
        :name => ""
      ),
      Animal.create!(
        :name => ""
      )
    ])
  end

  it "renders a list of animals" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
