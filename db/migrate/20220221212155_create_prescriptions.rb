class CreatePrescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :prescriptions do |t|
      t.string :name
      t.integer :dose

      t.timestamps
    end
  end
end
