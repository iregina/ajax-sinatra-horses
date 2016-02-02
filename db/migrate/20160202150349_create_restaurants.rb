class CreateRestaurants < ActiveRecord::Migration
  def change
  	  create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.string :cuisine
      t.integer :age

      t.timestamps
    end
  end
end
