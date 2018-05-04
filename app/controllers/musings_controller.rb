class MusingsController < ApplicationController
  before_action :authenticate

  def index
    user = User.find(params[:id])
    @musings = user.musings
  end

  def show
    @musing = Musing.find(params[:id])
  end

  def new
    @musing = Musing.new
  end

  def create
    current_user.musings.create(musing_params)
    redirect_to musings_path(current_user)
  end

  private

  def musing_params
    params.require(:post).permit(:title, :body)
  end
end