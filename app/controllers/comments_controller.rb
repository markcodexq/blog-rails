class CommentsController < ApplicationController
  before_action :authenticate_user!, :only => [:create]


  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(article_comments)
    @comment.save
    redirect_to article_path(@article)
  end

  private

  def article_comments
    params.require(:comment).permit(:author, :body)
  end
end
