class ProjectsController < ApplicationController
  def index
  end

  def show
    @project=Project.find(params[:id])
    @current_user=current_user
  end

  def edit
    @project=Project.find(params[:id])
    # @project_coders = []
    # @project.users.each do |user|
    #   @project_coders << user.username
    # end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params_update)
      flash[:success] = "Project Updated Successfully"
      redirect_to project_path(@project)
    else
      flash[:errors] = @project.errors.full_messages.to_sentence
      redirect_to edit_project_path
    end
  end

  def destroy
    @project=Project.find(params[:id])
    @project.destroy
    @project.assignments.destroy
    redirect_to root_path
  end

  def search
  end

  protected

  def project_params_update
    params.require(:project).permit(:title, :description)
  end
end
