class CreateRecipeTagItems < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_tag_items do |t|
      t.references :recipe_item, null: false, foreign_key: true
      t.references :tag_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
