class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :artist_id
      t.text :lyric
      t.string :name

      t.timestamps
    end
  end
end
