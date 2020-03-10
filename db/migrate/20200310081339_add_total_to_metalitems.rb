class AddTotalToMetalitems < ActiveRecord::Migration[6.0]
  def change
    add_column :metalitems, :total, :decimal
  end
end
