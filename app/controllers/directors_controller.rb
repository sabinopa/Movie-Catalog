class DirectorsController < ApplicationController 
    def new
        @director = Director.new
    end

    def create 
        @director = Director.new(name: params[:director][:name],
                                nationality: params[:director][:nationality],
                                birth_date: params[:director][:birth_date],
                                favourite_genre: params[:director][:favourite_genre])

        if @director.save
            return redirect_to director_path(@director.id, create: true)
        end
    end
    
    def show
        @director = Director.find(params[:id])
        @movies = @director.movie
        flash[:notice] = 'Diretor cadastrado com sucesso!' if params[:created] == true
        flash[:notice] = 'Diretor editado com sucesso!' if params[:updated] == true
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
            return redirect_to director_path(@director.id, updated: true)
        end 
        render :edit
    end
end