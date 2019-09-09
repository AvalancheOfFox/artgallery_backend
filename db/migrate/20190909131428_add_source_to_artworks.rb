class AddSourceToArtworks < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :source, :string
  end
end
