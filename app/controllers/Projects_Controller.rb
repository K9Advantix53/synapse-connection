class ProjectsController < ApplicationController
  def new
    @project=Project.new
    @languages=Project::LANGUAGES
  end

  def create
    @languages=Project::LANGUAGES
    @project = Project.new(project_params_update)
    @project.owner_id = current_user.id
    if @project.language == 'Ruby'
      @project.logo_url = 'ruby-logo.png'
    elsif @project.language == 'Rails'
      @project.logo_url = 'rails-logo.png'
    elsif @project.language == 'React'
      @project.logo_url = 'react-logo-copy.png'
    else
      @project.logo_url = 'other-logo.png'
    end

    @project.save

    if @project.save
      chatroom=Chatroom.new
      chatroom.topic = @project.title
      if chatroom.save
        flash[:success] = 'your project has been saved and a project chatroom has been created'
        chatroom.slug = @project.id.to_s
        chatroom.save
      end
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @project=Project.find(params[:id])
    @chatroom=Chatroom.find_by(slug: @project.id)
    @current_user=current_user
    @owner=nil
    current_user.owned_projects.each do |project|
      if project.id == @project.id
        @owner=true
        break
      else
        @owner=false
      end
    end
  end

  def authenticate_user
    @project=Project.find(params[:id])
    if current_user.id == @project.id
      yield
    else
      flash[:error] = 'This is not your project!'
    end
  end

  def edit
    authenticate_user do
      @languages = Project::LANGUAGES
    end
  end

  def update
    authenticate_user do
      if @project.update(project_params_update)
        flash[:success] = "Project Updated Successfully"
        redirect_to project_path(@project)
      else
        flash[:errors] = @project.errors.full_messages.to_sentence
        redirect_to edit_project_path
      end
    end
  end

  def destroy
    @project=Project.find(params[:id])
    @project.assignments.destroy
    Chatroom.where(topic: @project.title).first.destroy
    @project.destroy
    redirect_to root_path
  end

  def search
  end

  protected

  def project_params_update
    params.require(:project).permit(:title, :description, :language, :city, :state, :street, :longitude, :latitude)
  end
end
