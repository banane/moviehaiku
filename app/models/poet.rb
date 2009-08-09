class Poet < ActiveRecord::Base
   has_many :haikus
   has_many :movies, :through => :haikus
end
