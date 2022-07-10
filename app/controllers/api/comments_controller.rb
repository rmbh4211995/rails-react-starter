module Api
  class CommentsController < ApiController
    def index
      @comments = Comment.all

      render json: @comments, status: 200
    end

    def show
      @comment = Comment.find(params[:id])
      if @comment
        render json: @comment, status: 200
      else
        render json: { error: 'Error finding comment' }
      end
    end

    def create
      @joke = Joke.find(params[:joke_id])
      
      begin
        @comment = @joke.comments.create(comment_params)
        render json: @comment, status: 200
      rescue 
        render json: { error: "Error creating comment" }
      end
    end
  
    def update
      @comment = Comment.find(params[:id])
      if @comment.update(comment_params)
        render json: @joke, status: 200
      else
        render json: { error: 'Error updating comment' }
      end
    end

    def destroy
      @joke = Joke.find(params[:joke_id])
      @comment = @joke.comments.find(params[:id])

      begin 
        @comment.destroy!
        render json: null, status: 200
      rescue
        render json: { error: 'Error deleting comment' }
      end
    end
  
    private
      def comment_params
        params.require(:comment).permit(:author, :body, :status)
      end
  end
end

