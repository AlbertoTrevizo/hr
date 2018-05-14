require '/home/alberto/workspace/Ruby/hr/models/country.rb'
require '/home/alberto/workspace/Ruby/hr/factories/mixins/dao_mixin.rb'
require '/home/alberto/workspace/Ruby/hr/conection/conection.rb'

class CountryDao < DaoMixin
  include ImplementDao

  FIELDS = 'country_id, country_name, region_id'
  TABLE = 'countries'
  INSERT = "INSERT INTO #{TABLE} (#{FIELDS}) VALUES "
  Q_ALL = "SELECT #{FIELDS} FROM #{TABLE}"
  Q_BY_ID = "SELECT #{FIELDS} FROM #{TABLE} WHERE country_id ="
  DELETE = "DELETE FROM #{TABLE} WHERE country_id ="

  def create(data)
    rs = Conection.instance
    criterial = "#{INSERT} ('#{data.get_id}', '#{data.get_name}', #{data.get_region.get_id})"
    rs.execute(criterial)
  end

  def read(data = nil)
    rs = Conection.instance
    if data.nil?
      rs.search_country(Q_ALL)
    else
      rs.search_country("#{Q_BY_ID} '#{data}'")
    end
  end

  def update(data)
    rs = Conection.instance
    rs.execute("UPDATE #{TABLE} SET country_id = '#{data.get_id}',
      country_name = '#{data.get_name}', region_id = #{data.get_region.get_id}
      WHERE country_id = '#{data.get_id}'")
  end

  def delete(data)
    rs = Conection.instance
    criterial = "#{DELETE} '#{data}'"
    rs.execute(criterial)
  end

end
