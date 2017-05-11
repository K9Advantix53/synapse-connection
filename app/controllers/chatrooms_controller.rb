class ChatroomsController < ApplicationController
  def index
    @chatroom=Chatroom.new
    @chatrooms=Chatroom.all
  end

  def new
    if request.referrer.split("/").last == 'chatrooms'
      flash[:notice] = nil
    end
    @chatroom=Chatroom.new
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    if Chatroom.all.empty?
      last_number = 0
    else
      last_number=Chatroom.last.id
    end
    @chatroom.slug = last_number + 1
    if @chatroom.save
      respond_to do |format|
        format.html { redirect_to @chatroom }
        format.js
      end
    else
      respond_to do |format|
        flash[:notice] = {error: ["a chatroom with this topic already exists"]}
        format.html { redirect_to new_chatroom_path }
        format.js { render template: 'chatrooms/chatroom_error.js.erb'}
      end
    end
  end

  def edit
    @chatroom = Chatroom.find_by(slug: params[:slug])
  end

  def update
    chatroom = Chatroom.find_by(slug: params[:slug])
  end

  def show
    @chatroom = Chatroom.find_by(slug: params[:slug])
    @message = Message.new
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:topic)
  end

end
