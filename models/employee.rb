class Employee

  def initialize(id = nil, first_name = nil, last_name = nil, email = nil,
          phone_number = nil, hire_date = nil, job = nil, salary = nil,
          commission_pct = nil, manager = nil, department = nil)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone_number = phone_number
    @hire_date = hire_date
    @job = job
    @salary = salary
    @commission_pct = commission_pct
    @manager = manager
    @department = department
  end

  def get_id  
    @id
  end

  def set_id(data)
    @id = data
  end

  def get_first_name
    @first_name
  end

  def set_first_name(data)
    @first_name = name
  end

  def get_last_name
    @last_name
  end

  def set_last_name(data)
    @last_name = data
  end

  def get_email
    @email
  end

  def set_email(data)
    @email = data
  end

  def get_phone_number
    @phone_number
  end

  def set_phone_number(data)
    @phone_number = data
  end

  def get_hire_date
    @hire_date
  end

  def set_hire_date(data)
    @hire_date = data
  end

  def get_job
    @job
  end

  def set_job(data)
    @job = data
  end

  def get_salary
    @salary
  end

  def set_salary(data)
    @salary = data
  end

  def get_commission_pct
    @commission_pct
  end

  def set_commission_pct(data)
    @commission_pct = data
  end

  def get_manager
    @manager
  end

  def set_manager(data)
    @manager = data
  end

  def get_d_mpartment
    @department
  end

  def set_d_mpartment(data)
    @department = data
  end

end
