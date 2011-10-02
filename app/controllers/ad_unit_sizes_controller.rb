class AdUnitSizesController < ApplicationController
  # GET /ad_unit_sizes
  # GET /ad_unit_sizes.xml
  def index
    @ad_unit_sizes = AdUnitSize.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ad_unit_sizes }
    end
  end

  # GET /ad_unit_sizes/1
  # GET /ad_unit_sizes/1.xml
  def show
    @ad_unit_size = AdUnitSize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ad_unit_size }
    end
  end

  # GET /ad_unit_sizes/new
  # GET /ad_unit_sizes/new.xml
  def new
    @ad_unit_size = AdUnitSize.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ad_unit_size }
    end
  end

  # GET /ad_unit_sizes/1/edit
  def edit
    @ad_unit_size = AdUnitSize.find(params[:id])
  end

  # POST /ad_unit_sizes
  # POST /ad_unit_sizes.xml
  def create
    @ad_unit_size = AdUnitSize.new(params[:ad_unit_size])

    respond_to do |format|
      if @ad_unit_size.save
        format.html { redirect_to(@ad_unit_size, :notice => 'Ad unit size was successfully created.') }
        format.xml  { render :xml => @ad_unit_size, :status => :created, :location => @ad_unit_size }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ad_unit_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ad_unit_sizes/1
  # PUT /ad_unit_sizes/1.xml
  def update
    @ad_unit_size = AdUnitSize.find(params[:id])

    respond_to do |format|
      if @ad_unit_size.update_attributes(params[:ad_unit_size])
        format.html { redirect_to(@ad_unit_size, :notice => 'Ad unit size was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ad_unit_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_unit_sizes/1
  # DELETE /ad_unit_sizes/1.xml
  def destroy
    @ad_unit_size = AdUnitSize.find(params[:id])
    @ad_unit_size.destroy

    respond_to do |format|
      format.html { redirect_to(ad_unit_sizes_url) }
      format.xml  { head :ok }
    end
  end
end
