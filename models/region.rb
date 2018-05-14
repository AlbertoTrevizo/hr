class Region

  def initialize(id = nil, name = nil)
    @id = id
    @name = name
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

end
