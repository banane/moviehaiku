class HaikuMod2a < ActiveRecord::Migration
  def self.up
     remove_column :haikus, :poet
     remove_column :haikus, :email
  end

  def self.down
     add_column :haikus, :poet, :string
  end
end
