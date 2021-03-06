class PostsController < ApplicationController
  def home
    @posts = Post.all
  end

  #new -> create
  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.body = params[:body]

    if @post.save
      redirect_to "/posts/home"
    else
      render :new
    end

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
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to "/posts/home"
  end
end
