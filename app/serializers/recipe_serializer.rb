class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :extract, :grains, :hops, :yeast, :directions
end
