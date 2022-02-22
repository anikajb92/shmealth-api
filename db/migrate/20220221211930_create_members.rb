# Patients Class

class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :firstname
      t.string :lastname
      t.date :birthday
      t.boolean :is_active
      t.float :monthly_premium
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
