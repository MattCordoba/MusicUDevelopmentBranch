class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.song_id :integer

      t.timestamps
    end
  end
end
