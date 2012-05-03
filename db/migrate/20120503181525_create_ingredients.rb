class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.text :name
      t.text :amount
      t.integer :recipe_id
      t.timestamps
    end
  end
end
