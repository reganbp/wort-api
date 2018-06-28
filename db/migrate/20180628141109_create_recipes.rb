class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.array :extract
      t.array :grains
      t.array :hops
      t.array :yeast
      t.array :directions

      t.timestamps
    end
  end
end
