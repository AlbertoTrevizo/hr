require "spec_helper"
require '/home/alberto/workspace/Ruby/hr/models/country.rb'
require '/home/alberto/workspace/Ruby/hr/factories/implementations/country_dao.rb'
require '/home/alberto/workspace/Ruby/hr/models/region.rb'

RSpec.describe CountryDao do

  num = 2

  it "Country create" do
    countryDao = CountryDao.new
    region = Region.new(3,"Zona centro")
    country = Country.new(num,"USA",region)
    countryDao.create(country)
    countryDao.read(num)
  end

  it "Country read" do
    countryDao = CountryDao.new
    countryDao.read(num)
  end

  it "Country update" do
    countryDao = CountryDao.new
    countryDao.read(num)
    region = Region.new(1,"Zona norte")
    country = Country.new(num,"USA",region)
    countryDao.update(country)
    countryDao.read(num)
  end

  it "Country delete" do
    countryDao = CountryDao.new
    countryDao.read(num)
    countryDao.delete(num)
    countryDao.read(num)
  end

end
