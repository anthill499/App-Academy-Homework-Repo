class CreateHousesTable < ActiveRecord::Migration[5.2]
  def change
  
    create_table :house1 do |t|
      t.string :address, null: false
      t.integer :resident_id, null:false
    end
    
  end
end
