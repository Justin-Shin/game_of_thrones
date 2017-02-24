class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string "name", null: false
      t.string "status"
      t.string "img_url"
      t.references :characterable, index: true, polymorphic: true
      t.timestamps
    end
  end
end
