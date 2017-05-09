class Api::V1::ProjectsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    projects = Project.all
    render json: projects
  end

  def show
  end

  def create

    body=request.body.read
    parsed=JSON.parse(body)
    project=Project.new(parsed)
    project.owner_id = current_user.id
    if project.save
      render json: { message: ["It worked!"]}
    else
      render json: { message: project.errors.full_messages}
    end
  end

  private

  def search_params
    params.permit(:search)
  end
end
