class AdUnitsController < ApplicationController
  # GET /ad_units
  # GET /ad_units.xml
  def index
    @ad_units = AdUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ad_units }
    end
  end

  # GET /ad_units/1
  # GET /ad_units/1.xml
  def show
    @ad_unit = AdUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ad_unit }
    end
  end

  # GET /ad_units/new
  # GET /ad_units/new.xml
  def new
    @ad_unit = AdUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ad_unit }
    end
  end

  # GET /ad_units/1/edit
  def edit
    @ad_unit = AdUnit.find(params[:id])
  end

  # POST /ad_units
  # POST /ad_units.xml
  def create
    @ad_unit = AdUnit.new(params[:ad_unit])

    respond_to do |format|
      if @ad_unit.save
        format.html { redirect_to(@ad_unit, :notice => 'Ad unit was successfully created.') }
        format.xml  { render :xml => @ad_unit, :status => :created, :location => @ad_unit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ad_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ad_units/1
  # PUT /ad_units/1.xml
  def update
    @ad_unit = AdUnit.find(params[:id])

    respond_to do |format|
      if @ad_unit.update_attributes(params[:ad_unit])
        format.html { redirect_to(@ad_unit, :notice => 'Ad unit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ad_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_units/1
  # DELETE /ad_units/1.xml
  def destroy
    @ad_unit = AdUnit.find(params[:id])
    @ad_unit.destroy

    respond_to do |format|
      format.html { redirect_to(ad_units_url) }
      format.xml  { head :ok }
    end
  end
end
