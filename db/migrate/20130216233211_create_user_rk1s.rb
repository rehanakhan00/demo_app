class CreateUserRk1s < ActiveRecord::Migration
  def change
    create_table :user_rk1s do |t|
      t.string :rk_name
      t.string :rk_
      t.string :email

      t.timestamps
    end
  end
end
