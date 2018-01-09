class JobsController < ApplicationController
  before_action :set_job, only: [:update, :show]

  def index
    @jobs = Job.page(params[:page]).per(15)
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(jobs_params)
    if @job.save
      render 'success'
    else
      render "new"
    end
  end

  def update
    if @job.update(job_params)
      redirect_to(@job)
    else
      render "edit"
    end
  end

  def show
  end

  private
  
  def jobs_params
    params.require(:job).permit(:title, :description, :company, :location, :startdate, :applyurl, :jobtype, :salaryrate, :companyurl, :applyemail, :jobtype)
  end

  def set_job
    @job = Job.find(params[:id])
  end
end
