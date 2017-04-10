class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.integer :food_id
      t.integer :ingredient_id

      t.timestamps
    end
    add_index :recipes, :food_id
    add_index :recipes, :ingredient_id
  end
end
