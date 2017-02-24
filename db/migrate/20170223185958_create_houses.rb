class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string "name", null: false
      t.string "sigil"
      t.string "words"
      t.string "seat"
      t.string "region"

      t.timestamps
    end
  end
end
