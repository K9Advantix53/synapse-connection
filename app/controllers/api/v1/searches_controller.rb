class Api::V1::SearchesController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    @projects=Project.all
    if params[:search]
      search=params[:search]
      @projects=Project.where("title ilike ?", "%#{search}%")
      render json: @projects
    else
      @projects=Project.all.order("created_at DESC")
    end
  end

  private

  def search_params
    params.permit(:search)
  end
end
