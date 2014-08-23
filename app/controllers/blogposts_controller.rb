class BlogpostsController < ApplicationController
  def new
  end

  def index
  end

  def create
    @blogpost = Blogpost.new(blogpost_params)

    @blogpost.save
    redirect_to @blogpost
  end

  def show
    @blogpost = Blogpost.find(params[:id])
  end

  private
  def blogpost_params
    params.require(:blogpost).permit(:title, :body)
  end
end