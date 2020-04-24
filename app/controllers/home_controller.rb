class HomeController < ApplicationController

  def index
    @messages = Message.limit(5).order('created_at DESC')
    @topics = Topic.order('created_at DESC').page(params[:page]).per(3)
  end
  
end
