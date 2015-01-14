require 'rails_helper'

RSpec.describe "orders/show", :type => :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :name => "Name",
      :description => "MyText",
      :quantity => 1,
      :status => "Status",
      :price => "9.99",
      :tracking_link => "Tracking Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Tracking Link/)
  end
end
