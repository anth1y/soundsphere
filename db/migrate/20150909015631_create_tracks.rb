class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.text :title
      t.string :artist
      t.string :file

      t.timestamps null: false
    end
  end
end
