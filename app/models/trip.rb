class Trip < ActiveRecord::Base
  belongs_to :city
  belongs_to :country
  belongs_to :user

  validates :length_of_trip, :presence => true
end
