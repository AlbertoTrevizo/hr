require '/home/alberto/workspace/Ruby/hr/models/job.rb'
require '/home/alberto/workspace/Ruby/hr/factories/mixins/dao_mixin.rb'
require '/home/alberto/workspace/Ruby/hr/conection/conection.rb'

class JobDao < DaoMixin
  include ImplementDao

  FIELDS = 'job_id, job_title, min_salary, max_salary'
  TABLE = 'jobs'
  INSERT = "INSERT INTO #{TABLE} (#{FIELDS}) VALUES "
  Q_ALL = "SELECT #{FIELDS} FROM #{TABLE}"
  Q_BY_ID = "SELECT #{FIELDS} FROM #{TABLE} WHERE job_id ="
  DELETE = "DELETE FROM #{TABLE} WHERE job_id ="

  def create(data)
    rs = Conection.instance
    criterial = "#{INSERT} ('#{data.get_id}', '#{data.get_title}', #{data.get_min_salary}, #{data.get_max_salary})"
    rs.execute(criterial)
  end

  def read(data = nil)
    rs = Conection.instance
    if data.nil?
      rs.search_job(Q_ALL)
    else
      rs.search_job("#{Q_BY_ID} '#{data}'")
    end
  end

  def update(data)
    rs = Conection.instance
    rs.execute("UPDATE #{TABLE} SET job_title = '#{data.get_title}',
      min_salary = '#{data.get_min_salary}', max_salary = '#{data.get_max_salary}'
      WHERE job_id = '#{data.get_id}'")
  end

  def delete(data)
    rs = Conection.instance
    criterial = "#{DELETE} '#{data}'"
    rs.execute(criterial)
  end

end
