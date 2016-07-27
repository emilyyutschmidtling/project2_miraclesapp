class CommentsController < ApplicationController

  before_filter :get_post

  def index
    @comments = @post.comments
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = @post.comments.build
  end

  def create

    @comment = @post.comments.new(params.require(:comment).permit( :user_id, :content, :photo_url, :first_name, :last_name, :nickname))
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to post_comment_path(@post, @comment), notice: "Comment successfully saved."
    else
      render :new
    end

  end

  def edit

  end

  def update

  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_comments_url, notice: "Comment was successfully deleted."
  end




  private

    def get_post
      @post = Post.find(params[:post_id])
    end

end
