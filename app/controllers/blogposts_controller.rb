class BlogpostsController < ApplicationController

  def new
    if !user_signed_in?
      redirect_to '/blogposts'
    end
  end


  def admin
    if !user_signed_in?
      redirect_to '/blogposts'
    end
    @blogposts = Blogpost.all
  end


  def index
    @blogposts = Blogpost.all[0 .. 6]
  end

  def create
    @blogpost = Blogpost.new(blogpost_params)

    @blogpost.save
    redirect_to '/blogposts/index'
  end

  def update
    @blogpost = Blogpost.find(params[:id])

    if @blogpost.update(blogpost_params)
      redirect_to @blogpost
    else
      render 'edit'
    end
  end

  def edit
    @blogpost = Blogpost.find(params[:id])
  end

  def show
    @blogpost = Blogpost.find(params[:id])
  end

  def destroy
    @blogpost = Blogpost.find(params[:id])
    @blogpost.destroy
    flash[:notice] = "Blogpost deleted"
    redirect_to "/blogposts/admin"
  end

  private
  def blogpost_params
    params.require(:blogpost).permit(:title, :body)
  end
end