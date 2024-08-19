class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.datetime :birthdate
      t.boolean :admin
      t.boolean :activated

      t.timestamps
    end
  end
end
