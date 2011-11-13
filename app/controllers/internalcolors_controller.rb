class InternalcolorsController < ApplicationController
  # GET /internalcolors
  # GET /internalcolors.xml
  def index
    @internalcolors = Internalcolor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @internalcolors }
    end
  end

  # GET /internalcolors/1
  # GET /internalcolors/1.xml
  def show
    @internalcolor = Internalcolor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @internalcolor }
    end
  end

  # GET /internalcolors/new
  # GET /internalcolors/new.xml
  def new
    @internalcolor = Internalcolor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @internalcolor }
    end
  end

  # GET /internalcolors/1/edit
  def edit
    @internalcolor = Internalcolor.find(params[:id])
  end

  # POST /internalcolors
  # POST /internalcolors.xml
  def create
    @internalcolor = Internalcolor.new(params[:internalcolor])

    respond_to do |format|
      if @internalcolor.save
        format.html { redirect_to(@internalcolor, :notice => 'Internalcolor was successfully created.') }
        format.xml  { render :xml => @internalcolor, :status => :created, :location => @internalcolor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @internalcolor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /internalcolors/1
  # PUT /internalcolors/1.xml
  def update
    @internalcolor = Internalcolor.find(params[:id])

    respond_to do |format|
      if @internalcolor.update_attributes(params[:internalcolor])
        format.html { redirect_to(@internalcolor, :notice => 'Internalcolor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @internalcolor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /internalcolors/1
  # DELETE /internalcolors/1.xml
  def destroy
    @internalcolor = Internalcolor.find(params[:id])
    @internalcolor.destroy

    respond_to do |format|
      format.html { redirect_to(internalcolors_url) }
      format.xml  { head :ok }
    end
  end
end
