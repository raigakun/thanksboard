class LikesController < ApplicationController

  def create
    @message = Message.find(params[:message_id])
    @like = Like.create(message_id: params[:message_id])
    @message.reload
  end

end
