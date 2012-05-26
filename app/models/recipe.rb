class Recipe < ActiveRecord::Base
  attr_accessible :name, :description, :instructions, :ingredients_attributes, :prep_time, :cook_time, :servings, :image
  belongs_to :user
  has_many :ingredients
  accepts_nested_attributes_for :ingredients
  validates :name, uniqueness: true
  mount_uploader :image, ImageUploader
end
