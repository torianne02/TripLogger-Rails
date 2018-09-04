class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.integer :city_id
      t.integer :country_id
      t.string :length_of_trip
    end
  end
end
