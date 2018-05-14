require 'singleton'
require 'pg'

class Conection
  include Singleton

  def initialize
    begin
        @data = PG.connect :dbname => 'hr', :user => 'alberto'
    rescue PG::Error => e
        puts e.message
    end
  end

  def execute criterial
     @data.exec(criterial)
  end

  def search_region criterial
     rs = @data.exec(criterial)
     rs.each do |row|
       puts "%s %s" % [ row['region_id'], row['region_name'] ]
     end
  end

  def search_country criterial
     rs = @data.exec(criterial)
     rs.each do |row|
       puts "%s %s %s" % [ row['country_id'], row['country_name'], row['region_id'] ]
     end
  end

  def search_location criterial
     rs = @data.exec(criterial)
     rs.each do |row|
       puts "%s %s %s %s %s %s" % [ row['location_id'], row['street_address'],
       row['postal_code'], row['city'], row['state_province'],
       row['country_id'] ]
     end
  end
end
