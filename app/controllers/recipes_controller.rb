class RecipesController < OpenReadController
  before_action :set_recipe, only: [:update, :destroy]

  # GET /recipes
  def index
    @recipes = Recipe.all

    render json: @recipes
  end

  # GET /recipes/1
  def show
    @recipe = Recipe.find(params[:id])
    render json: @recipe
  end

  # POST /recipes
  def create
    # p "current user is", current_user
    # p "current user.recipes is", current_user.recipes
    # p "recipe parameters is", recipe_params
    @recipe = current_user.recipes.build(recipe_params)

    if @recipe.save
      render json: @recipe, status: :created, location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  def update
    if @recipe.update(recipe_params)
      render json: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1
  def destroy
    @recipe.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_recipe
    @recipe = current_user.recipes.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def recipe_params
    params.require(:recipe).permit(:name, :description, :extract, :grains, :hops, :yeast, :directions, :user_id)
  end
end
