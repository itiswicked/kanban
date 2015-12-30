class ProjectsController < ApplicationController
  def index
    @user = User.find_by(id: session[:user_id])
    @projects = Project.where(user_id: session[:user_id])
  end

  def show
    @project = Project.find(params[:id])
    @tasks = @project.tasks
    @tasks_1 = @tasks.select { |task| task.phase == 1 }
    @tasks_2 = @tasks.select { |task| task.phase == 2 }
    @tasks_3 = @tasks.select { |task| task.phase == 3 }
    @tasks_4 = @tasks.select { |task| task.phase == 4 }
    @tasks_5 = @tasks.select { |task| task.phase == 5 }
    @tasks_6 = @tasks.select { |task| task.phase == 6 }
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user_id = session[:user_id]
    if @project.save
      flash.notice = "Project added successfully"
      redirect_to projects_path
    else
      flash.notice = @project.errors.full_messages.join(". ")
      render "new"
    end
  end

  private
  def project_params
    params.require(:project).permit(
    :project_name,
    )
  end
end
