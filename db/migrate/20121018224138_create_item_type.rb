class CreateItemType < ActiveRecord::Migration
  def change
    create_table :item_types do |t|
      t.string :name
      t.string :short_name
      t.string :category
      t.references :item_weight
    end

    add_index :item_types, :item_weight_id
  end
end
