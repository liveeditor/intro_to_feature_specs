class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :price_cents
      t.integer :shipping_price_cents

      t.timestamps
    end
  end
end
