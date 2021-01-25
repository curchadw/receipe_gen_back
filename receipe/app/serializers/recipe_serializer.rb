class RecipeSerializer < ActiveModel::Serializer
    attributes :id, :name, :ingredients, :chef_name, :origin, :category_id
    belongs_to :category
end