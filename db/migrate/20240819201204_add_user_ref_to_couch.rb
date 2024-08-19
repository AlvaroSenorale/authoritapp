class AddUserRefToCouch < ActiveRecord::Migration[7.2]
  def change
    add_reference :couches, :owner, null: false, foreign_key: { to_table: :users }
  end
end
