class AddPrepTimeAndCookTimeAndServingsToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :prep_time, :string
    add_column :recipes, :cook_time, :string
    add_column :recipes, :servings, :string
  end
end
