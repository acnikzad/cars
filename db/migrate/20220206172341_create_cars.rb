class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :submodel
      t.string :color
      t.string :year

      t.timestamps
    end
  end
end
