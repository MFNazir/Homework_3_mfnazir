class AddInvoiceTotalToInvoices < ActiveRecord::Migration[6.0]
  def change
    add_column :invoices, :invoice_total, :decimal
  end
end
