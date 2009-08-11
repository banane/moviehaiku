class Haiku < ActiveRecord::Base
   belongs_to :movie
   belongs_to :poet

   accepts_nested_attributes_for :poet, :allow_destroy => false
   accepts_nested_attributes_for :movie, :allow_destroy => false

end
