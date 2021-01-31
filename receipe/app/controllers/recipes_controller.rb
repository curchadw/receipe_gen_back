class RecipesController < ApplicationController

    
    def index
        recipes = Recipe.all
        render json: recipes, include: :category
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


    def destroy
      
        recipe = Recipe.find(params[:id])
        
        unless recipe.nil?
      
          recipe.destroy
          render json: recipe
        else
          render json: { error: "Property not found" }, status: 404
        end
    end
    
    private

    def recipe_params
        params.require(:recipe).permit(:category_id,:name,:ingredients,:chef_name,:origin,:instructions,category:[:id,:category])
    end
    
    
    
end