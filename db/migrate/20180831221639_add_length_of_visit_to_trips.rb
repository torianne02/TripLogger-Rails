class AddLengthOfVisitToTrips < ActiveRecord::Migration[5.2]
  def change
    add_column :trips, :length_of_visit, :string
  end
end
