class ExternalcolorsController < ApplicationController
  # GET /externalcolors
  # GET /externalcolors.xml
  def index
    @externalcolors = Externalcolor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @externalcolors }
    end
  end

  # GET /externalcolors/1
  # GET /externalcolors/1.xml
  def show
    @externalcolor = Externalcolor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @externalcolor }
    end
  end

  # GET /externalcolors/new
  # GET /externalcolors/new.xml
  def new
    @externalcolor = Externalcolor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @externalcolor }
    end
  end

  # GET /externalcolors/1/edit
  def edit
    @externalcolor = Externalcolor.find(params[:id])
  end

  # POST /externalcolors
  # POST /externalcolors.xml
  def create
    @externalcolor = Externalcolor.new(params[:externalcolor])

    respond_to do |format|
      if @externalcolor.save
        format.html { redirect_to(@externalcolor, :notice => 'Externalcolor was successfully created.') }
        format.xml  { render :xml => @externalcolor, :status => :created, :location => @externalcolor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @externalcolor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /externalcolors/1
  # PUT /externalcolors/1.xml
  def update
    @externalcolor = Externalcolor.find(params[:id])

    respond_to do |format|
      if @externalcolor.update_attributes(params[:externalcolor])
        format.html { redirect_to(@externalcolor, :notice => 'Externalcolor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @externalcolor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /externalcolors/1
  # DELETE /externalcolors/1.xml
  def destroy
    @externalcolor = Externalcolor.find(params[:id])
    @externalcolor.destroy

    respond_to do |format|
      format.html { redirect_to(externalcolors_url) }
      format.xml  { head :ok }
    end
  end
end
