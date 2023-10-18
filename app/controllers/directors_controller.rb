class DirectorsController < ApplicationController 
    def index
        @directors = Director.all
    end

    def new
        @director = Director.new
    end

    def create 
        @director = Director.new(director_params)

        if @director.save
            return redirect_to director_path(@director.id), notice: "#{@director.name}: Criado com sucesso!"
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
            
        if @director.update(director_params)
            return redirect_to director_path(@director.id), notice: "#{@director.name}: Atualizado com sucesso!"
        end
        render :edit
    end

    private
    
    def director_params
        params.require(:director).permit(:name, :nationality, :birth_date, :favourite_genre)
    end
end
