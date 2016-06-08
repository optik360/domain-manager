class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :contact_info
      t.timestamps null: false
    end
    add_column :domains, :client_id, :integer
    add_index :domains, :client_id
  end
end
