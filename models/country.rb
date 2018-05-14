class Country

  def initialize(id = nil, name = nil, region = nil)
    @id = id
    @name = name
    @region = region
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

  def set_name(name)
    @name = name
  end

  def get_region
    @region
  end

  def set_region(region)
    @region = region
  end

end
