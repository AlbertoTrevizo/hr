class Location
  attr_accessor :id, :name

  def initialize(id = nil, address = nil, postal_code = nil, city = nil,
          state = nil, country = nil)
    @id = id
    @name = name
    @address = address
    @postal_code = postal_code
    @city = city
    @state = state
    @country = country
  end

  def get_id
    @id
  end

  def set_id(data)
    @id = data
  end

  def get_address
    @address
  end

  def set_address(data)
    @address = data
  end

  def get_postal_code
    @postal_code
  end

  def set_postal_code(data)
    @postal_code = data
  end

  def get_city
    @city
  end

  def set_city(data)
    @city = data
  end

  def get_state
    @state
  end

  def set_state(data)
    @state = data
  end

  def get_country
    @country
  end

  def set_country(data)
    @country = data
  end
end
