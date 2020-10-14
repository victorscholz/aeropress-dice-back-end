class RecipesController < ApplicationController
  def index
    recipes = Recipe.all
    render json: recipes
  end

  def show
    recipe = find_recipe
    render json: { id: recipe.id, dice: recipe.dice }
  end

  def create
    recipe = Recipe.create(recipe_params)
    render json: recipe
  end

  def update
    recipe = find_recipe
    recipe.update(recipe_params)
    render json: recipe
  end

  def destroy
    recipe = find_recipe
    Recipe.destroy(params[:id])
    render json: recipe
  end

  private

  def find_recipe
    recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:dice)
  end
end
