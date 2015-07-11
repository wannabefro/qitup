class CreateSetSongs < ActiveRecord::Migration
  def change
    create_table :set_songs do |t|
      t.references :performance, index: true, foreign_key: true
      t.references :song, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
