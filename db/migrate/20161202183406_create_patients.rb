class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :surname
      t.date :birthday
      
      t.timestamps
    end
  end
end
