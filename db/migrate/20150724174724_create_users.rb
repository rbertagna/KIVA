class CreateUsers < ActiveRecord::Migration

  def up
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.string :address
      t.integer :age
      t.string :phone_number
      t.string :credit_card_number
    end
  end

  def down
    drop_table :users
  end
  
end
