class CreateRecipes < ActiveRecord::Migration[6.0]
    def change
        create_table :recipes do |t|
            t.string :name
            t.text :ingredients
            t.string :chef_name
            t.string :origin
            t.string :instructions
            t.integer :category_id
            t.timestamps
        end    
    end
end