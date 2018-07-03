class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :extract, :grains, :hops, :yeast, :directions, :user_id
end
