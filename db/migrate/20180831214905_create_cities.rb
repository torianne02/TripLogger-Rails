class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.text :travel_advice
      t.integer :tourist_rating
    end
  end
end
