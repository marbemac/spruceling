class CreateOrderItem < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.references :box
      t.references :order
    end
  end
end
