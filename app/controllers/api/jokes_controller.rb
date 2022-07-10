module Api
  class JokesController < ApiController
    def index
      @jokes = Joke.all
      render json: @jokes, status: 200
    end
  
    def show
      @joke = Joke.find(params[:id])

      if @joke
        render json: @joke, status: 200
      else
        render json: { error: 'Joke not found' }
      end
    end
  
    def create
      @joke = Joke.new(joke_params)

      if @joke.save
        render json: @joke, status: 200
      else
        render json: { error: 'Error creating joke' }
      end
    end
  
    def update
      @joke = Joke.find(params[:id])
      if @joke.update(joke_params)
        render json: @joke, status: 200
      else
        render json: { error: 'Error updating joke' }
      end
    end
  
    def destroy
      @joke = Joke.find(params[:id])
      if @joke.destroy
        render json: @joke, status: 200
      else
        render json: { error: 'Error deleting joke' }
      end
    end
  
    private
      def joke_params
        params.require(:joke).permit(:author, :title, :description, :status)
      end
  end
end
