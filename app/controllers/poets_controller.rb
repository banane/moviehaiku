class PoetsController < ApplicationController
  # GET /poets
  # GET /poets.xml
  def index
    @poets = Poets.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @poets }
    end
  end

  # GET /poets/1
  # GET /poets/1.xml
  def show
    @poets = Poets.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @poets }
    end
  end

  # GET /poets/new
  # GET /poets/new.xml
  def new
    @poets = Poets.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @poets }
    end
  end

  # GET /poets/1/edit
  def edit
    @poets = Poets.find(params[:id])
  end

  # POST /poets
  # POST /poets.xml
  def create
    @poets = Poets.new(params[:poets])

    respond_to do |format|
      if @poets.save
        flash[:notice] = 'Poets was successfully created.'
        format.html { redirect_to(@poets) }
        format.xml  { render :xml => @poets, :status => :created, :location => @poets }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @poets.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /poets/1
  # PUT /poets/1.xml
  def update
    @poets = Poets.find(params[:id])

    respond_to do |format|
      if @poets.update_attributes(params[:poets])
        flash[:notice] = 'Poets was successfully updated.'
        format.html { redirect_to(@poets) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @poets.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /poets/1
  # DELETE /poets/1.xml
  def destroy
    @poets = Poets.find(params[:id])
    @poets.destroy

    respond_to do |format|
      format.html { redirect_to(poets_url) }
      format.xml  { head :ok }
    end
  end
end
