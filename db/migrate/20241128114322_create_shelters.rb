class CreateShelters < ActiveRecord::Migration[6.1]
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :address
      t.integer :capacity
      t.text :facilities
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
