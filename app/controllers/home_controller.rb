class HomeController < ApplicationController
  def index
       @haiku = Haiku.last(:include => :movie, :include => :poet)
       respond_to do |format|
          format.html # index.html.erb
          format.xml  { render :xml => @haiku }
       end
  end

end
