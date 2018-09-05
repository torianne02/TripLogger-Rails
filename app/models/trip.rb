class Trip < ActiveRecord::Base
  belongs_to :city
  belongs_to :country
  belongs_to :user

  accepts_nested_attributes_for :country, :allow_destroy => true
  accepts_nested_attributes_for :city, :allow_destroy => true

  validates :length_of_trip, :presence => true

  def city_attributes=(city_attributes)
    city = City.find_or_create_by(name: city_attributes[:name])
    city.update(city_attributes)
    self.city_id = city.id
  end

  def country_attributes=(country_attributes)
    country = Country.find_or_create_by(name: country_attributes[:name])
    country.update(country_attributes)
    self.country_id = country.id
  end
end
