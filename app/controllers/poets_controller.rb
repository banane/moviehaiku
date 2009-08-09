class PoetsController < ApplicationController
  # GET /poets
  # GET /poets.xml
  def index
    @poets = Poet.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @poets }
    end
  end

  # GET /poets/1
  # GET /poets/1.xml
  def show
    @poet = Poet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @poet }
    end
  end

  # GET /poets/new
  # GET /poets/new.xml
  def new
    @poet = Poet.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @poet }
    end
  end

  # GET /poets/1/edit
  def edit
    @poet = Poet.find(params[:id])
  end

  # POST /poets
  # POST /poets.xml
  def create
    @poet = Poet.new(params[:poet])

    respond_to do |format|
      if @poet.save
        flash[:notice] = 'Poet was successfully created.'
        format.html { redirect_to(@poet) }
        format.xml  { render :xml => @poet, :status => :created, :location => @poet }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @poet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /poets/1
  # PUT /poets/1.xml
  def update
    @poet = Poet.find(params[:id])

    respond_to do |format|
      if @poet.update_attributes(params[:poet])
        flash[:notice] = 'Poet was successfully updated.'
        format.html { redirect_to(@poet) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @poet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /poets/1
  # DELETE /poets/1.xml
  def destroy
    @poet = Poet.find(params[:id])
    @poet.destroy

    respond_to do |format|
      format.html { redirect_to(poets_url) }
      format.xml  { head :ok }
    end
  end
end
