require "spec_helper"
require '/home/alberto/workspace/Ruby/hr/models/region.rb'
require '/home/alberto/workspace/Ruby/hr/factories/implementations/region_dao.rb'

RSpec.describe RegionDao do

  num = 5

  it "Region create" do
    regionDao = RegionDao.new
    region = Region.new(num,"Zona oeste")
    regionDao.create(region)
    regionDao.read(num)
  end

  it "Region read" do
    regionDao = RegionDao.new
    regionDao.read(num)
  end

  it "Region update" do
    regionDao = RegionDao.new
    regionDao.read(num)
    region = Region.new(num,"Zona oeste")
    regionDao.update(region)
    regionDao.read(num)
  end

  it "Region delete" do
    regionDao = RegionDao.new
    regionDao.read(num)
    regionDao.delete(num)
    regionDao.read(num)
  end

end
