class JobHistory

  def initialize(employee = nil, start_date = nil,
          end_date = nil, job, department = nil)
    @employee = employee
    @start_date = start_date
    @end_date = end_date
    @job = job
    @department = department
  end

  def get_employee
    @employee
  end

  def set_employee(data)
    @employee = data
  end

  def get_start_date
    @start_date
  end

  def set_start_date(data)
    @start_date = data
  end

  def get_end_date
    @end_date
  end

  def set_end_date(data)
    @end_date = data
  end

  def get_job
    @job
  end

  def set_job(data)
    @job = data
  end

  def get_department
    @department
  end

  def set_department(data)
    @department = data
  end

end
