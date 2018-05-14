class Department

  def initialize(id = nil, name = nil, manager = nil, location = nil)
    @id = id
    @name = name
    @manager = manager
    @location = location
  end

  def get_id
    @id
  end

  def set_id(data)
    @id = data
  end

  def get_name
    @name
  end

  def set_name(data)
    @name = data
  end

  def get_manager
    @manager
  end

  def set_manager(data)
    @manager = data
  end

  def get_location
    @location
  end

  def set_location(data)
    @location = data
  end
end
