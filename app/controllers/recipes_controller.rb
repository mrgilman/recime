class RecipesController < ApplicationController
  before_filter :lookup_recipe, :only => [:show, :edit, :destroy, :update]

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = current_user.recipes.create(params[:recipe])
    redirect_to recipe_path(@recipe)
  end

  def edit
  end
  
  def update
    @recipe.update_attributes(params[:recipe])
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def lookup_recipe
    @recipe = Recipe.find(params[:id])
  end
end
