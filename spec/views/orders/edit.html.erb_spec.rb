require 'rails_helper'

RSpec.describe "orders/edit", :type => :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :name => "MyString",
      :description => "MyText",
      :quantity => 1,
      :status => "MyString",
      :price => "9.99",
      :tracking_link => "MyString"
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_name[name=?]", "order[name]"

      assert_select "textarea#order_description[name=?]", "order[description]"

      assert_select "input#order_quantity[name=?]", "order[quantity]"

      assert_select "input#order_status[name=?]", "order[status]"

      assert_select "input#order_price[name=?]", "order[price]"

      assert_select "input#order_tracking_link[name=?]", "order[tracking_link]"
    end
  end
end
