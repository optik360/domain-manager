class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      
      t.string :name
      t.string :server
      t.string :cms
      t.date :due_date
      t.string :last_known_state_1
      t.string :last_known_state_2
      t.text :comment
      t.timestamps null: false
    end
  end
end
