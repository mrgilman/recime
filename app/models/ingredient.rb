class Ingredient < ActiveRecord::Base
  attr_accessible :name, :amount, :recipe_id
  belongs_to :recipe
end
