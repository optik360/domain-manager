class AddPrecisionToDomain < ActiveRecord::Migration
  def change
    add_column :domains, :server_name, :string
    add_column :domains, :created_date, :date
    add_column :domains, :last_invoice_date, :date
    add_column :domains, :mail, :string
  end
end
