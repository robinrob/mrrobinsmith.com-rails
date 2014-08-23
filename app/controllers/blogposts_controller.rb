class BlogpostsController < ApplicationController
  def new
  end

  def index
  end

  def create
    @blogpost = BlogPost.new(blogpost_params)

    puts params[:blogpost]

    @blogpost.save
    redirect_to root_path
  end

  private
  def blogpost_params
    params.require(:blogpost).permit(:title, :body)
  end

  # def show
  #   @blogpost = BlogPost.find(params[:id])
  # end
end