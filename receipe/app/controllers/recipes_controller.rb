class RecipesController < ApplicationController

    def new
        recipe = Recipe.new


    end
    
    def index
        recipes = Recipe.all
        render json: recipes, include: :categories
    end

    def show
        recipe = Recipe.find(id: params[:id])
        options ={
            include: [:category]
        }
        render json: recipe
    end


    def create
        recipe = Recipe.create(recipe_params)
        if recipe.save
            render json: recipe
        else
            render json: { error: "Couldn't save" }
        end
    end
    
    private

    def recipe_params
        params.require(:recipe).permit(:category_id,:name,:ingredients,:chef_name,:origin,category_attribute:[:category])
    end
    
    
    
end