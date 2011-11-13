class CylindersController < ApplicationController
  # GET /cylinders
  # GET /cylinders.xml
  def index
    @cylinders = Cylinder.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cylinders }
    end
  end

  # GET /cylinders/1
  # GET /cylinders/1.xml
  def show
    @cylinder = Cylinder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cylinder }
    end
  end

  # GET /cylinders/new
  # GET /cylinders/new.xml
  def new
    @cylinder = Cylinder.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cylinder }
    end
  end

  # GET /cylinders/1/edit
  def edit
    @cylinder = Cylinder.find(params[:id])
  end

  # POST /cylinders
  # POST /cylinders.xml
  def create
    @cylinder = Cylinder.new(params[:cylinder])

    respond_to do |format|
      if @cylinder.save
        format.html { redirect_to(@cylinder, :notice => 'Cylinder was successfully created.') }
        format.xml  { render :xml => @cylinder, :status => :created, :location => @cylinder }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cylinder.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cylinders/1
  # PUT /cylinders/1.xml
  def update
    @cylinder = Cylinder.find(params[:id])

    respond_to do |format|
      if @cylinder.update_attributes(params[:cylinder])
        format.html { redirect_to(@cylinder, :notice => 'Cylinder was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cylinder.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cylinders/1
  # DELETE /cylinders/1.xml
  def destroy
    @cylinder = Cylinder.find(params[:id])
    @cylinder.destroy

    respond_to do |format|
      format.html { redirect_to(cylinders_url) }
      format.xml  { head :ok }
    end
  end
end
