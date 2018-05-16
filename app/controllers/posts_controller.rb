class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end
  
  def create
    @post = Post.new
    @post.title = params[:title]
    @post.user_name = params[:user_name]
    @post.content = params[:content]
    @post.save
    redirect_to "/posts/show/#{@post.id}"
  end
  
  def edit
    @post = Post.find(params[:id])
    
  end
  
  def update
    @post = Post.find(params[:id])
    @post.title = params[:title]
    @post.user_name = params[:user_name]
    @post.content = params[:content]
    @post.save
    redirect_to "/posts/show/#{@post.id}"
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to :root
  end
  
end
