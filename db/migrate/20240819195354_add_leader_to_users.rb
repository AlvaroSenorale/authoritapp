class AddLeaderToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :leader_id, :interger, null: true
    add_foreign_key :users, :users, column: :leader_id
  end
end
