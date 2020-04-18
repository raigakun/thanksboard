class LikesController < ApplicationController

  def create
    @like = Like.create(message_id: params[:message_id])
    @likes = Like.where(message_id: params[:message_id])
    @like_count = Like.where(message_id: params[:message_id]).count
    @message = Message.find_by(id: @like.message_id)
    @messages = Message.all
  end

  def destroy
    @like = Like.find_by(message_id: params[:message_id])
    @like.destroy
    @likes = Like.where(message_id: params[:message_id])
    @like_count = Like.where(message_id: params[:message_id]).count
    @messages = Message.all
  end

end
