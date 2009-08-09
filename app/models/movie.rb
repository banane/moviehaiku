class Movie < ActiveRecord::Base
	has_many :haiku
	has_many :poet
end
