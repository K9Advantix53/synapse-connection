class AssignmentsController < ApplicationController
  def create
    Assignment.create(project_id: params[:project_id], user_id: params[:user_id])
    redirect_to project_path(params[:project])
  end
end
