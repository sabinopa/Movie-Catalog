class DirectorsController < ApplicationController 
    def new
        @director = Director.new
    end

    def create 
        @director = Director.new(name: params[:director][:name],
                                nationality: params[:director][:nationality],
                                birth_date: params[:director][:date_birth],
                                favourite_gender: params[:director][:favourite_gender])

        if @director.save
            return redirect_to director_path(@director.id, create: true)
        end
    end
    
    def show
        @director = Director.find(params[:id])
        @movies = @director.movies
        flash[:notice] = 'Diretor cadastrado com sucesso!' if params[:created] == true
        flash[:notice] = 'Diretor editado com sucesso!' if params[:updated] == true
    end

    def edit
        @director = director.find(params[:id])
    end
    
    def update
        @director = director.find(params[:id])
            
        if @director.update(name: params[:director][:name],
                            nationality: params[:director][:nationality],
                            birth_date: params[:director][:date_birth],
                            favourite_gender: params[:director][:favourite_gender])
            redirect_to director_path(@director.id, update: true)
        end 
        render :new
    end
end