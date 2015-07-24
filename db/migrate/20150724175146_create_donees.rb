class CreateDonees < ActiveRecord::Migration
  
  def up
    create_table :donees do |t|
      t.string :full_name
      t.string :country
      t.string :bio
      t.string :address
      t.integer :goal
      t.integer :current_funds
    end
  end

  def down
    drop_table :donees
  end

end
