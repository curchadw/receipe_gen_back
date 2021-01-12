class RecipesController < ApplicationController

    def index
        recipes = Recipe.all
        render json: recipes, include: :catagories
    end

    def show
        recipe = Recipe.find(id: params[:id])
        options ={
            include: [:catagory]
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
    

    def recipe_params
        params.permit(:category_id,:name,:ingredients,:chef_name,:origin,category_attribute:[:category])
    end
    
    
    
end