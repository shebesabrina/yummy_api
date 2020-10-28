class CreateReceipes < ActiveRecord::Migration[6.0]
  def change
    create_table :receipes do |t|
      t.string :title
      t.string :image
      t.text :description
      t.string :chef_name

      t.timestamps
    end
  end
end
