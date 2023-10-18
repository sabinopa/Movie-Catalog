class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end

    def new
        @genre = Genre.new
    end
    
    def create 
        @genre = Genre.new(genre_params)
    
        if @genre.save
            return redirect_to genre_path(@genre.id), notice: "#{@genre.name} criado com sucesso!" 
        end
        render :new
    end

    def show
        @genre = Genre.find(params[:id])
        @movies = @genre.movie
    end

    def edit
        @genre = Genre.find(params[:id])
    end
            
    def update
        @genre = Genre.find(params[:id])
                    
        if @genre.update(genre_params)
            return redirect_to genre_path(@genre.id), notice: "#{@genre.name} atualizado com sucesso!" 
        end 
        render :new   
    end

    private

    def genre_params
        params.require(:genre).permit(:name)
    end
end