class MoviesController < ApplicationController
  # GET /movies
  # GET /movies.xml
  def index
    @movies = Movies.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @movies }
    end
  end

  # GET /movies/1
  # GET /movies/1.xml
  def show
    @movies = Movies.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @movies }
    end
  end

  # GET /movies/new
  # GET /movies/new.xml
  def new
    @movies = Movies.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @movies }
    end
  end

  # GET /movies/1/edit
  def edit
    @movies = Movies.find(params[:id])
  end

  # POST /movies
  # POST /movies.xml
  def create
    @movies = Movies.new(params[:movies])

    respond_to do |format|
      if @movies.save
        flash[:notice] = 'Movies was successfully created.'
        format.html { redirect_to(@movies) }
        format.xml  { render :xml => @movies, :status => :created, :location => @movies }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @movies.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /movies/1
  # PUT /movies/1.xml
  def update
    @movies = Movies.find(params[:id])

    respond_to do |format|
      if @movies.update_attributes(params[:movies])
        flash[:notice] = 'Movies was successfully updated.'
        format.html { redirect_to(@movies) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @movies.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.xml
  def destroy
    @movies = Movies.find(params[:id])
    @movies.destroy

    respond_to do |format|
      format.html { redirect_to(movies_url) }
      format.xml  { head :ok }
    end
  end
end
