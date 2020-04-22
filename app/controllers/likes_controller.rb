class LikesController < ApplicationController

  def create
    @like = Like.create(message_id: params[:message_id])
    @likes = Like.where(message_id: params[:message_id])
  end

end
