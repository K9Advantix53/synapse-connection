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

  def edit
    @project=Project.find(params[:id])
    @languages=Project::LANGUAGES
    # @project_coders = []
    # @project.users.each do |user|
    #   @project_coders << user.username
    # end
  end

  def update
    @project=Project.find(params[:id])
    chatroom=Chatroom.find_by(slug: @project.id)
    chatroom.topic=@project.title
    binding.pry
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
    params.require(:project).permit(:title, :description, :language, :city, :state, :street, :longitude, :latitude)
  end
end
