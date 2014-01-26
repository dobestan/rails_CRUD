class PostsController < ApplicationController
  def home
    @posts = Post.all
  end

  #new -> create
  def new
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.body = params[:body]
    @post.save

    redirect_to "/posts/home"
  end

  def show
    @post = Post.find(params[:id])
  end

  #edit -> update
  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.title = params[:title]
    @post.body = params[:body]
    @post.save

    redirect_to "/posts/home"
  end

  def destroy
  end
end
