class TasksController < ApplicationController
  def show
    @task = Task.find(params[:id])
  end

  def new
    @project = Project.find(params[:project_id])
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    binding.pry
    @task.project_id = params[:project_id]
    if @task.save
      flash.notice = "Task added successfully"
      redirect_to project_path(Project.find(params[:project_id]))
    else
      flash.notice = @task.errors.full_messages.join(". ")
      render "new"
    end
  end

  private
  def task_params
    params.require(:task).permit(
    :task_name,
    :phase,
    :description
    )
  end
end
