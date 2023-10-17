class HomeController < ApplicationController
    def index
        @movies = Movie.all
        @genders = Gender.all
        @directors = Director.all
    end  
end