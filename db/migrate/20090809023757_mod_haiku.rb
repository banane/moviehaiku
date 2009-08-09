class ModHaiku < ActiveRecord::Migration
  def self.up
     remove_column :haikus, :movie
  end

  def self.down
     add_column :haikus, :movie, :string
  end
end
