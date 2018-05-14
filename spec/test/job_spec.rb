require "spec_helper"
require '/home/alberto/workspace/Ruby/hr/models/job.rb'
require '/home/alberto/workspace/Ruby/hr/factories/implementations/job_dao.rb'

RSpec.describe JobDao do

  num = 1

  it "Job create" do
    jobDao = JobDao.new
    job = Job.new("#{num}","job1", 200, 500)
    jobDao.create(job)
    jobDao.read(num)
  end

  it "Job read" do
    jobDao = JobDao.new
    jobDao.read(num)
  end

  it "Job update" do
    jobDao = JobDao.new
    jobDao.read(num)
    job = Job.new("#{num}","The best job", 20000, 50000)
    jobDao.update(job)
    jobDao.read(num)
  end

  it "Job delete" do
    jobDao = JobDao.new
    jobDao.read(num)
    jobDao.delete(num)
    jobDao.read(num)
  end

end
