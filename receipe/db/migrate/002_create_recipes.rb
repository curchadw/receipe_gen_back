class CreateRecipes < ActiveRecord::Migration[6.0]
    def change
        create_table :recpies do |t|
            t.string :name
            t.text :ingredients
            t.string :chef_name
            t.string :origin
            t.timestamps
        end    
    end
end