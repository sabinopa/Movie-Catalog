class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end

    def show
        @movie = Movie.find(params[:id])
    end
    
    def new
        @movie = Movie.new
    end
    
    def create 
        @movie = Movie.new(movie_params)

        if @movie.save
           return redirect_to movie_path(@movie.id), notice: "#{@movie.title}: Criado com sucesso!"
        end
    
        render :new
    end
    
    def edit
        @movie = Movie.find(params[:id])
    end
    
    def update
        @movie = Movie.find(params[:id])
            
        if @movie.update(movie_params)
            return redirect_to movie_path(@movie.id), notice: "#{@movie.title}: Atualizado com sucesso!"
        end
        render :edit
    end

    def publish
        movie = Movie.find(params[:id])
        movie.published!
        redirect_to movie_path(movie.id)
    end

    private

    def movie_params
        params.require(:movie).permit(:title, :year, :summary, :country, :time, :genre_id, :director_id, :image)
    end
end