class PostsController < ApplicationController

  before_action :authenticate_user!

  def index
    @posts = Post.all
    @comment = Comment.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = current_user.posts.build
    # @post = Post.new
    # @post.user_id = current_user.id
  end

  def create

    @post = current_user.posts.build(params.require(:post).permit(:content, :photo_url, :first_name, :last_name, :nickname))
    # @post = Post.new(params.require(:post).permit(:content, :photo_url, :first_name, :last_name, :nickname))
    # @post.user_id = current_user.id

    if @post.save
      redirect_to @post, notice: "Post successfully created."
    else
      render :new
    end

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update

    @post = Post.find(params[:id])

    if @post.update_attributes(params.require(:post).permit(:content, :photo_url, :first_name, :last_name, :nickname))
      redirect_to @post, notice: "Post successfully updated."
    else
      render :edit
    end

  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url, notice: 'Post was successfully deleted.'
  end

end
