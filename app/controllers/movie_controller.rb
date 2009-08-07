class MovieController < ApplicationController
  def index
    @haikus = Haiku.all(:order => "movie DESC", :limit => 10)
    respond_to do |format| 
       format.html # index.html.erb
       format.xml { render :xml => @haikus }
     end	
  end
  def show(movie)
     @haikus = Haiku.find(:all, :conditions => {:movie => movie})
     respond_to do |format| 
       format.html # index.html.erb
       format.xml { render :xml => @haikus }
     end 
  end
end
