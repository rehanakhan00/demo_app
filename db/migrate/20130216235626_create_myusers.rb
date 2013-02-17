class CreateMyusers < ActiveRecord::Migration
  def change
    create_table :myusers do |t|
      t.string :first_name
      t.string :user_email

      t.timestamps
    end
  end
end
