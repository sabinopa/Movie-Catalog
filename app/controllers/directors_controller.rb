class DirectorsController < ApplicationController 
    def index
        @directors = Director.all
    end

    def new
        @director = Director.new
    end

    def create 
        @director = Director.new(name: params[:director][:name],
                                nationality: params[:director][:nationality],
                                birth_date: params[:director][:birth_date],
                                favourite_genre: params[:director][:favourite_genre])

        if @director.save
            return redirect_to director_path(@director.id)
        end
    end
    
    def show
        @director = Director.find(params[:id])
        @movies = @director.movie

    end

    def edit
        @director = Director.find(params[:id])
    end
    
    def update
        @director = Director.find(params[:id])
            
        if @director.update(name: params[:director][:name],
                            nationality: params[:director][:nationality],
                            birth_date: params[:director][:birth_date],
                            favourite_genre: params[:director][:favourite_genre])
            
            flash[:notice] = "#{@director.name}: Atualizado com sucesso!"
            return redirect_to director_path(@director.id)
        end
        render :edit
    end
end
