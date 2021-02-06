class Recipe < ApplicationRecord
    belongs_to :category
    accepts_nested_attributes_for :category
    # validates_with FormValidator
    validates :name, :origin, :chef_name, :ingredients, :instructions, presence: true
    

end