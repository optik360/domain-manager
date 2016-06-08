class AddHostToDomain < ActiveRecord::Migration
  def change
    add_column :domains, :host, :string
  end
end
