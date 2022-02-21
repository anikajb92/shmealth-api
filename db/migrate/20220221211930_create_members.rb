class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :username
      t.string :password_digest
      t.string :firstname
      t.string :lastname
      t.date :birthday

      t.timestamps
    end
  end
end
