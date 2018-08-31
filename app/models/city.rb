class City < ActiveRecord::Base
  has_many :trips
  has_many :users, through: :trips
  belongs_to :country

  validates :name, :travel_advice, :tourist_rating, presence: true
end
