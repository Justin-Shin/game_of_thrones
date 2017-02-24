class CreateVassals < ActiveRecord::Migration[5.0]
  def change
    create_table :vassals do |t|
      t.string "name", null: false
      t.string "sigil"
      t.string "words"
      t.string "seat"
      t.string "region"
      t.boolean "noble"
      t.references :house, index: true, foreign_key: true
      t.timestamps
    end
  end
end
