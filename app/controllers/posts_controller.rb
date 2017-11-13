class PostsController < ApplicationController

  def index
    @post = Post.filter(params)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Success!"
      redirect_to posts_path(@post)
    else
      flash[:error] = @post.errors.full_messages
      redirect_to new_post_path
    end
  end

  private

  def post_params
      params.require(:post).permit(:category_id).merge(user_id: current_user.id)
    end
  end
end
