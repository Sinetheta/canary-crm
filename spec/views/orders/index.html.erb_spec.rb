require 'rails_helper'

RSpec.describe "orders/index", :type => :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :name => "Name",
        :description => "MyText",
        :quantity => 1,
        :status => "Status",
        :price => "9.99",
        :tracking_link => "Tracking Link"
      ),
      Order.create!(
        :name => "Name",
        :description => "MyText",
        :quantity => 1,
        :status => "Status",
        :price => "9.99",
        :tracking_link => "Tracking Link"
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Tracking Link".to_s, :count => 2
  end
end
