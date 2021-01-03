class RecipesController < ApplicationController

    def index
        recipes = Recipe.all
        render json: recipes, include: :catagories
    end
    
    
    
    
end