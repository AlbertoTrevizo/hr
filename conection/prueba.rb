# require './conection.rb'
#
# rs = Conection.instance
#
# rs.search("SELECT * FROM EMPLOYEES").each do |row|
#   puts "%s %s %s %s %s" % [ row['id'], row['name'], row['breed'], row['age'], row['sex'] ]
# end

require '../models/region.rb'

region = Region.new

region.id = 1

p region.id
