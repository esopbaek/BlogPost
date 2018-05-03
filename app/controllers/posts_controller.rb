class PostsController < ApplicationController
  before_action :authenticate
  
  def index
    @posts = current_user.posts
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    current_user.posts.create(post_params)
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end