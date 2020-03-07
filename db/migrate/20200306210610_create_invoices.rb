class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.integer :invoice_number
      t.string :description

      t.timestamps
    end
  end
end
