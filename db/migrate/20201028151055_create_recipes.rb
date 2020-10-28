class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :image
      t.text :description
      t.string :chef_name

      t.timestamps
    end
  end
end
