class HomeController < ApplicationController

  def index
    @messages = Message.limit(5).order('created_at DESC')
  end
  
end
