class Job

  def initialize(id = nil, title = nil, min_salary = nil, max_salary = nil)
    @id = id
    @title = title
    @min_salary = min_salary
    @max_salary = max_salary
  end

  def get_id
    @id
  end

  def set_id(data)
    @id = data
  end

  def get_title
    @title
  end

  def set_title(data)
    @title = data
  end

  def get_min_salary
    @min_salary
  end

  def set_min_salary(data)
    @min_salary = data
  end

  def get_max_salary
    @max_salary
  end

  def set_max_salary(data)
    @max_salary = data
  end

end
