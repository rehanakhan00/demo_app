class CreateUser1s < ActiveRecord::Migration
  def change
    create_table :user1s do |t|
      t.integer :id
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
