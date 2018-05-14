require "spec_helper"
require '/home/alberto/workspace/Ruby/hr/models/location.rb'
require '/home/alberto/workspace/Ruby/hr/factories/implementations/location_dao.rb'
require '/home/alberto/workspace/Ruby/hr/models/country.rb'

RSpec.describe LocationDao do

  num = 2

  it "Country create" do
    locationDao = LocationDao.new
    country = Country.new(1,"Mexico",3)
    location = Location.new(num, "nose", "30500", "Cuauhtemoc", "Chihuahua", country)
    locationDao.create(location)
    locationDao.read(num)
  end

  it "Country read" do
    locationDao = LocationDao.new
    locationDao.read(num)
  end

  it "Country update" do
    locationDao = LocationDao.new
    locationDao.read(num)
    country = Country.new(1,"USA", 3)
    location = Location.new(num, "ahora si se", "30500", "Chihuahua", "Chihuahua", country)
    locationDao.update(location)
    locationDao.read(num)
  end

  it "Country delete" do
    locationDao = LocationDao.new
    locationDao.read(num)
    locationDao.delete(num)
    locationDao.read(num)
  end

end
