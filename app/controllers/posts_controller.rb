class PostsController < ApplicationController
  def index
    @posts = post.all
  end

  def new
  end
  
  def create
    @post = Post.new
    @post.title = params[:name]
    @post.user_name = params[:user_title]
    @post.content = params[:body]
    @post.save
    redirect_to "/posts/show/#{@post.id}"
  end
  
  def edit
  end
  
  def update
    @post = Post.find(params[:id])
    @post.title = params[:title]
    @post.user_name = params[:user_name]
    @post.content = params[:content]
    @post.save
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def delete
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to "/posts/index"
  end
  
end
