class Api::V1::AssignmentsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    render json: Assignment.all
  end

  def show
  end

  def create
    body=request.body.read
    parsed=JSON.parse(body)
    assignment = Assignment.new(parsed)
    assignment.user_id = current_user.id
    if assignment.save
      render json: { message: ["It worked!"]}
    else
      render json: { message: assignment.errors.full_messages}
    end
  end
end
