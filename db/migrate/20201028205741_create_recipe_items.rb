class CreateRecipeItems < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_items do |t|
      t.string :title
      t.string :image
      t.string :description
      t.string :chef_name

      t.timestamps
    end
  end
end
