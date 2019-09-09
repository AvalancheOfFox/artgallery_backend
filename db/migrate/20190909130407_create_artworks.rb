class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :medium
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
