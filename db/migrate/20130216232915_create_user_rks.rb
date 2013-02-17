class CreateUserRks < ActiveRecord::Migration
  def change
    create_table :user_rks do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
