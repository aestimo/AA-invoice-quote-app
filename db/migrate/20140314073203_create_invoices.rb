class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :client_id
      t.string :code
      t.string :status
      t.date :due_date
      t.float :tax
      t.string :terms
      t.text :notes

      t.timestamps
    end
  end
end
