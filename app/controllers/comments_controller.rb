class CommentsController < ApplicationController
  before_action :find_post
  
  def new
    @comment = Comment.new
  end

  def find_post
    @post = Post.find(params[:post_params])
  end
end
