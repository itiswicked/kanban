class ProjectsController < ApplicationController
  def index
    @user = User.find_by(id: session[:user_id])
    @projects = Project.where(user_id: session[:user_id])
  end

  def show
    @project = Project.find(params[:id])
    @tasks = @project.tasks
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
