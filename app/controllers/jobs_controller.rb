class JobsController < ApplicationController
def index
  @jobs = Job.page(params[:page]).per(25)
end

def new
  @job = Job.new
end

def create
  @job = Job.new(params.require(:job).permit(:title, :company, :applyurl))
  if @job.save
    render 'success'
  else
    render "new"
  end
end


def update
  @job = Job.find(params[:id])
  if @job.update(job_params)
    redirect_to(@job)
  else
    render "edit"
  end
end


def show
  @job = Job.find(params[:id])
end


end
