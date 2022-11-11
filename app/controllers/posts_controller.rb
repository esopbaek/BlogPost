class PostsController < ApplicationController
  before_action :authenticate

  def index
    user = User.find(params[:id])
    @posts = user.posts
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

  def comment
    @post = Post.find(params[:id])
    @post.update_attributes({ comment: params[:comment][:comment] })
    redirect_to post_path(@post)
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
