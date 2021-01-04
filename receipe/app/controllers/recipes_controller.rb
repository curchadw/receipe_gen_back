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
        recipe = Recipe.create(rec_params)
        if recipe.save
            render json: recipe
        else
            render json: { error: "Couldn't save" }
        end
    end
    

    def rec_params
        params.permit(:catagory_id,:name,:ingredients,:chef_name,:origin,catagory_attribute:[:name])
    end
    
    
    
end