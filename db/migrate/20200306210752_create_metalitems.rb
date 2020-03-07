class CreateMetalitems < ActiveRecord::Migration[6.0]
  def change
    create_table :metalitems do |t|
      t.string :description
      t.integer :quantity
      t.integer :unit_price

      t.timestamps
    end
  end
end
