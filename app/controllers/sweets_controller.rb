class SweetsController < ApplicationController
  # GET /sweets
  # GET /sweets.xml
  def index
    @sweets = Sweet.recent

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sweets }
    end
  end

  # GET /sweets/new
  # GET /sweets/new.xml
  def new
    @sweet = Sweet.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sweet }
    end
  end

  # POST /sweets
  # POST /sweets.xml
  def create
    @sweet = Sweet.new(params[:sweet])

    respond_to do |format|
      if @sweet.save
        format.html { redirect_to(:sweets, :notice => 'Sweet was successfully created.') }
        format.xml  { render :xml => @sweet, :status => :created, :location => @sweet }
        format.js
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sweet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sweets/1
  # PUT /sweets/1.xml
  def update
    @sweet = Sweet.find(params[:id])

    respond_to do |format|
      if @sweet.update_attributes(params[:sweet])
        format.html { redirect_to(@sweet, :notice => 'Sweet was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sweet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sweets/1
  # DELETE /sweets/1.xml
  def destroy
    @sweet = Sweet.find(params[:id])
    @sweet.destroy

    respond_to do |format|
      format.html { redirect_to(sweets_url) }
      format.xml  { head :ok }
    end
  end
end
