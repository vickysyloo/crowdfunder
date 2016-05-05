class ProjectsController < ApplicationController


  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      flash[:alert] = "Project created!"
      redirect_to project_path
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])

    unless current_user == @project.user
      flash[:alert] = "You shall not pass!"
      redirect_to project_url(project)
    end
  end

  def update
    @project = Project.find(params[:id])

    if @project.update_attributes(project_params)
      flash[:alert] = "Information updated!"
      redirect_to project_path
    else
      render :edit
    end

  end

  def destroy
    @project = Project.find(params[:id])

    @project.destroy
    redirect_to root_path
  end

private

  def project_params
    params.require(:project).permit(:name, :description, :location, :deadline, :goal, :image)
  end


end
