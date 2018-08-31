class Country < ActiveRecord
  has_many :cities
  has_many :users, through: :cities

  validates :name, :native_language, :presence => true
end
