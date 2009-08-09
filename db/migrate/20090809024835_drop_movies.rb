class DropMovies < ActiveRecord::Migration
  def self.up
    drop_table :movies
    drop_table :poets
  end

  def self.down
  end
end
