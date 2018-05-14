require '/home/alberto/workspace/Ruby/hr/models/location.rb'
require '/home/alberto/workspace/Ruby/hr/factories/mixins/dao_mixin.rb'
require '/home/alberto/workspace/Ruby/hr/conection/conection.rb'

class LocationDao < DaoMixin
  include ImplementDao

  FIELDS = 'location_id, street_address, postal_code, city, state_province, country_id'
  TABLE = 'locations'
  INSERT = "INSERT INTO #{TABLE} (#{FIELDS}) VALUES "
  Q_ALL = "SELECT #{FIELDS} FROM #{TABLE}"
  Q_BY_ID = "SELECT #{FIELDS} FROM #{TABLE} WHERE location_id ="
  DELETE = "DELETE FROM #{TABLE} WHERE location_id ="

  def create(data)
    rs = Conection.instance
    criterial = "#{INSERT} (#{data.get_id}, '#{data.get_address}',
    '#{data.get_postal_code}', '#{data.get_city}', '#{data.get_state}',
    '#{data.get_country.get_id}')"
    rs.execute(criterial)
  end

  def read(data = nil)
    rs = Conection.instance
    if data.nil?
      rs.search_location(Q_ALL)
    else
      rs.search_location("#{Q_BY_ID} '#{data}'")
    end
  end

  def update(data)
    rs = Conection.instance
    rs.execute("UPDATE #{TABLE} SET street_address = '#{data.get_address}',
      postal_code = '#{data.get_postal_code}', city = '#{data.get_city}',
      state_province = '#{data.get_state}', country_id = '#{data.get_country.get_id}'
      WHERE location_id = #{data.get_id}")
  end

  def delete(data)
    rs = Conection.instance
    criterial = "#{DELETE} '#{data}'"
    rs.execute(criterial)
  end

end
