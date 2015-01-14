class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.text :description
      t.datetime :ordered_at
      t.integer :quantity
      t.string :status
      t.decimal :price
      t.string :tracking_link

      t.timestamps
    end
  end
end
