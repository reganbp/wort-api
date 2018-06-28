class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.string :extract
      t.string :grains
      t.string :hops
      t.string :yeast
      t.string :directions

      t.timestamps
    end
  end
end
