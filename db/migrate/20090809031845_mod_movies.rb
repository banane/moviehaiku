class ModMovies < ActiveRecord::Migration
  def self.up
    remove_column :movies, :imdb_url
    add_column :movies, :aff_url, :string
    add_column :movies, :aff_name, :string
  end

  def self.down 
  end
end
