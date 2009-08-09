class Haiku < ActiveRecord::Base
	belongs_to :movie
	belongs_to :poet
end
