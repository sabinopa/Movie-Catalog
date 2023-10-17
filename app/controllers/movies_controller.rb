class MoviesController < ApplicationController
    def show
        @movie = Movie.find(params[:id])
        flash[:notice] = 'Filme cadastrado com sucesso!' if params[:created] == true
        flash[:notice] = 'Filme editado com sucesso!' if params[:updated] == true
    end
    
    def new
        @movie = Movie.new
    end
    
    def create 
        @movie = Movie.new(title: params[:movie][:title],
                            year: params[:movie][:year],
                            summary: params[:movie][:summary],
                            country: params[:movie][:country],
                            time: params[:movie][:time],
                            director_id: params[:movie][:director_id],
                            genre_id: params[:movie][:genre_id])

        if @movie.save
           return redirect_to movie_path(@movie.id, created: true)
        end
    
        render :new
    end
    
    def edit
        @movie = Movie.find(params[:id])
    end
    
    def update
        @movie = Movie.find(params[:id])
            
        if @movie.update(title: params[:movie][:title],
                        year: params[:movie][:year],
                        summary: params[:movie][:summary],
                        country: params[:movie][:country],
                        time: params[:movie][:time],
                        director_id: params[:movie][:director_id],
                        genre_id: params[:movie][:genre_id])
            return redirect_to movie_path(@movie.id, updated: true)
        end
        render :edit
    end

    def publish
        movie = Movie.find(params[:id])
        movie.published!
        redirect_to movie_path(movie.id)
    end

end