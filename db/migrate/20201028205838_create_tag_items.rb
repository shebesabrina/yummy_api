class CreateTagItems < ActiveRecord::Migration[6.0]
  def change
    create_table :tag_items do |t|
      t.string :dietary_restrictions

      t.timestamps
    end
  end
end
