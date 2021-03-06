class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :destroy, :edit, :update]

  def index
    @topics = Topic.order('created_at DESC').page(params[:page]).per(5)
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to home_index_path
    else
      render :new
    end
  end

  def show
  end

  def destroy
    if @topic.destroy
      redirect_to home_index_path
    end
  end

  def edit
  end

  def update
    if @topic.update(topic_update_params)
      redirect_to topic_path(@topic)
    else
      render :edit
    end
  end

  def set_topic
    @topic = Topic.find(params[:id])
  end

  private
  def topic_params
    params.require(:topic).permit(:title, :text).merge(user_id: current_user.id)
  end

  private
  def topic_update_params
    params.require(:topic).permit(:title, :text).merge(user_id: current_user.id)
  end

end
