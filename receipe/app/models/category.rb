class Category < ApplicationRecord
    has_many :recipes
    accepts_nested_attributes_for :recipes

end