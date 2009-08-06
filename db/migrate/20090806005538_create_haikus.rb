class CreateHaikus < ActiveRecord::Migration
  def self.up
    create_table :haikus do |t|
      t.string :poet
      t.string :line1
      t.string :line2
      t.string :line3
      t.string :email
      t.string :movie

      t.timestamps
    end
  end

  def self.down
    drop_table :haikus
  end
end
