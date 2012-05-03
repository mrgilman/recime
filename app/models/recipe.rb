class Recipe < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :ingredients
end
