class CommentsController < ApplicationController
  http_basic_authenticate_with name: 'indigov', password: 'indigov', only: :destroy
  
  def create
    @joke = Joke.find(params[:joke_id])
    @comment = @joke.comments.create(comment_params)

    redirect_to joke_path(@joke)
  end

  def destroy
    @joke = Joke.find(params[:joke_id])
    @comment = @joke.comments.find(params[:id])
    @comment.destroy

    redirect_to joke_path(@joke), status: 303
  end

  private
    def comment_params
      params.require(:comment).permit(:author, :body, :status)
    end
end
