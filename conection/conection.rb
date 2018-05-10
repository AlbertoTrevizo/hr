require 'singleton'
require 'pg'

class Conection
  include Singleton

  attr_accessor :data

  def initialize
    @@data = PG.connect :dbname => 'hr', :user => 'beto'
  end

  def search criterial
    @@data.exec(criterial)
  end
end
