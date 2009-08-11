class HaikusController < ApplicationController
  # GET /haikus
  # GET /haikus.xml
  def index
    @haikus = Haiku.all(:include => :movie, :include => :poet)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @haikus }
    end
  end
 

  # GET /haikus/1
  # GET /haikus/1.xml
  def show
    @haiku = Haiku.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @haiku }
    end
  end

  # GET /haikus/new
  # GET /haikus/new.xml
  def new
    @haiku = Haiku.new
  
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @haiku}
    end
   
  end
 

  # GET /haikus/1/edit
  def edit
    @haiku = Haiku.find(params[:id])
  end

  # POST /haikus
  # POST /haikus.xml
  def create
    @haiku = Haiku.new(params[:haiku])

    respond_to do |format|
      if @haiku.save
        flash[:notice] = 'Haiku was successfully created.'
        format.html { redirect_to(@haiku) }
        format.xml  { render :xml => @haiku, :status => :created, :location => @haiku }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @haiku.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /haikus/1
  # PUT /haikus/1.xml
  def update
    @haiku = Haiku.find(params[:id])

    respond_to do |format|
      if @haiku.update_attributes(params[:haiku])
        flash[:notice] = 'Haiku was successfully updated.'
        format.html { redirect_to(@haiku) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @haiku.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /haikus/1
  # DELETE /haikus/1.xml
  def destroy
    @haiku = Haiku.find(params[:id])
    @haiku.destroy

    respond_to do |format|
      format.html { redirect_to(haikus_url) }
      format.xml  { head :ok }
    end
  end
end
