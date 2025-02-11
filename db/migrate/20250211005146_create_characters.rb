class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string "char_name"
      t.integer "movie_id"
      t.integer "actor_id"

      t.timestamps
    end
  end
end
