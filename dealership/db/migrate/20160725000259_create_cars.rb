class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :make, null: false
      t.string :model, null: false
      t.integer :price, null: false
      t.string :year
      t.string :mileage
      t.boolean :sold, null: false, default: false
      t.belongs_to :location, foreign_key: true

      t.timestamps
    end
  end
end
