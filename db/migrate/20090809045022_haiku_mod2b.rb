class HaikuMod2b < ActiveRecord::Migration
  def self.up
     add_column :haikus, :poet_id, :integer 
     add_column :haikus, :movie_id, :integer
  end

  def self.down
	remove_column :haikus, :poet_id, :integer
        remove_column :haikus, :movie_id, :integer
  end
end
