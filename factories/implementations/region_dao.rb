require '/home/alberto/workspace/Ruby/hr/models/region.rb'
require '/home/alberto/workspace/Ruby/hr/factories/mixins/dao_mixin.rb'
require '/home/alberto/workspace/Ruby/hr/conection/conection.rb'

class RegionDao < DaoMixin
  include ImplementDao

  FIELDS = 'region_id, region_name'
  TABLE = 'regions'
  INSERT = "INSERT INTO #{TABLE} (#{FIELDS}) VALUES "
  Q_ALL = "SELECT #{FIELDS} FROM #{TABLE}"
  Q_BY_ID = "SELECT #{FIELDS} FROM #{TABLE} WHERE region_id ="
  DELETE = "DELETE FROM #{TABLE} WHERE region_id ="

  def create(data)
    rs = Conection.instance
    criterial = "#{INSERT} (#{data.get_id}, '#{data.get_name}')"
    rs.execute(criterial)
  end

  def read(data = nil)
    rs = Conection.instance
    if data.nil?
      rs.search_region(Q_ALL)
    else
      rs.search_region("#{Q_BY_ID} #{data}")
    end
  end

  def update(data)
    rs = Conection.instance
    rs.execute("UPDATE #{TABLE} SET region_id = #{data.get_id},
      region_name = '#{data.get_name}' WHERE region_id = #{data.get_id}")
  end

  def delete(data)
    rs = Conection.instance
    criterial = "#{DELETE} #{data}"
    rs.execute(criterial)
  end

end
