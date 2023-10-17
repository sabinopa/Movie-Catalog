class GendersController < ApplicationController
    def new
        @gender = Gender.new
    end
    
    def create 
        @gender = Gender.new(name: params[:gender][:name])
    
        if @gender.save
            return redirect_to gender_path(@gender.id, created: true)
        end
    end

    def show
        @gender = Gender.find(params[:id])
        @movies = @gender.movie
        flash[:notice] = 'Gênero salvo com sucesso!' if params[:created] == true
        flash[:notice] = 'Gênero editado com sucesso!' if params[:updated] == true
    end

    def edit
        @gender = Gender.find(params[:id])
    end
            
    def update
        @gender = Gender.find(params[:id])
                    
        if @gender.update(name: params[:gender][:name])
            return redirect_to gender_path(@gender.id, created: true)
        end 
    render :new   
    end
end