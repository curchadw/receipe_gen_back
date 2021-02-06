class FormValidator < ActiveModel::Validator
    def validate(recipe)
        if recipe.name == ""
            recipe.errors.add :base, "Name needs to be filled"
        elsif recipe.origin == ""
            recipe.errors.add :base, "Origin needs to be filled"
        elsif recipe.chef_name.add == ""
            recipe.errors.add :base, "Chef name needs to be filled"
        elsif recipe.ingredients.add == ""
            recipe.errors.add :base, "Ingredients name needs to be filled"
        elsif recipe.instructions.add == ""
            recipe.errors.add :base, "Instructions needs to be filled"
        end
    end
end