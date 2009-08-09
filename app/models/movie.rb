class Movie < ActiveRecord::Base
    has_many :haikus
    has_many :poets, :through => :haikus
end
