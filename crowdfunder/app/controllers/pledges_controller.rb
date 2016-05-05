class PledgesController < ApplicationController
  before_action :load_project

  def show
    @pledge = Pledge.find(params[:id])
  end

  def create
    @pledge = @project.pledges.build(pledge_params)
    @pledge.user = current_user
  end

  def edit
  end

  def update
  end

  def destroy
    @pledge = Pledge.find(params[:id])
    @pledge.destroy
  end

  private

  def pledge_params
    params.require(:pledge).permit(:amount, :reward, :delivery)
  end

  def load_project
    @project = Project.find(params[:project_id])
  end
end
