class PostsController < ApplicationController
  def home
  end

  #new -> create
  def new
  end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.body = params[:body]
    @post.save

    redirect_to "/posts/new"
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
