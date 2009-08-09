class Poet < ActiveRecord::Base
   has_many :haiku
   has_many :movie
end
