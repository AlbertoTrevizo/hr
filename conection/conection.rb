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

  def searchRegion criterial
     rs = @data.exec(criterial)
     rs.each do |row|
       puts "%s %s" % [ row['region_id'], row['region_name'] ]
     end
  end

  def searchCountry criterial
     rs = @data.exec(criterial)
     rs.each do |row|
       puts "%s %s %s" % [ row['country_id'], row['country_name'], row['region_id'] ]
     end
  end
end
