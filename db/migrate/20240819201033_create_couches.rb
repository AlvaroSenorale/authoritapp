class CreateCouches < ActiveRecord::Migration[7.2]
  def change
    create_table :couches do |t|
      t.integer :size
      t.string :color
      t.integer :stock
      t.string :couch_type

      t.timestamps
    end
  end
end
