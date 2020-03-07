class CreateLineitems < ActiveRecord::Migration[6.0]
  def change
    create_table :lineitems do |t|
      t.references :invoice, null: false, foreign_key: true
      t.references :metalitem, null: false, foreign_key: true

      t.timestamps
    end
  end
end
