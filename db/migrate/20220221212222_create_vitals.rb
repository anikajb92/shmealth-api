class CreateVitals < ActiveRecord::Migration[6.1]
  def change
    create_table :vitals do |t|
      t.integer :bp
      t.integer :hr
      t.integer :weight
      t.timestamps
    end
  end
end
