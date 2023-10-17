class GenresController < ApplicationController
    def new
        @genre = Genre.new
    end
    
    def create 
        @genre = Genre.new(name: params[:genre][:name])
    
        if @genre.save
            return redirect_to genre_path(@genre.id, created: true)
        end
    end

    def show
        @genre = Genre.find(params[:id])
        @movies = @genre.movie
        flash[:notice] = 'Gênero salvo com sucesso!' if params[:created] == true
        flash[:notice] = 'Gênero editado com sucesso!' if params[:updated] == true
    end

    def edit
        @genre = Genre.find(params[:id])
    end
            
    def update
        @genre = Genre.find(params[:id])
                    
        if @genre.update(name: params[:genre][:name])
            return redirect_to genre_path(@genre.id, created: true)
        end 
    render :new   
    end
end