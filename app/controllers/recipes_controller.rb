class RecipesController < ApplicationController

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    #ingredient = @recipe.ingredients.build
  end

  def create
    @recipe = current_user.recipes.create(params[:recipe])
    #ingredient = @recipe.ingredients.build(params[:recipe][:ingredients])
    redirect_to recipe_path(@recipe)
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end
  
  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update_attributes(params[:recipe])
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end
end
