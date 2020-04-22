class TopicsController < ApplicationController
  
  def new
    @topic = topic.new
  end

  def create
    @mtopic = Topic.new(topic_params)
    if @message.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
    def topic_params
      params.require(:topic).permit(:title, :text).merge(user_id: current_user.id)
    end


end
