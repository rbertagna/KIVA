class CreateDonations < ActiveRecord::Migration

  def up
    create_table :donations do |t|
      t.integer :amount
      t.integer :user_id
      t.integer :donee_id
    end
  end

  def down
    drop_table :donations
  end

end
