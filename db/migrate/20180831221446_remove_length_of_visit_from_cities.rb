class RemoveLengthOfVisitFromCities < ActiveRecord::Migration[5.2]
  def change
    remove_column :cities, :length_of_visit, :string
  end
end
