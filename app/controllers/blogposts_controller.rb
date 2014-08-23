class BlogpostsController < ApplicationController
  def new
  end

  def index
  end

  def create
    render text: blogpost_params[:@blogpost].inspect
    # @blogpost = BlogPost.new(blogpost_params)
    #
    # @blogpost.save
    # redirect_to @blogpost
    # redirect_to root_url
  end

  private
  def blogpost_params
    params.require(:blogpost).permit(:title, :body)
  end

  # def show
  #   @blogpost = BlogPost.find(params[:id])
  # end
end