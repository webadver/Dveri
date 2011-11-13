class ExternalpanelsController < ApplicationController
  # GET /externalpanels
  # GET /externalpanels.xml
  def index
    @externalpanels = Externalpanel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @externalpanels }
    end
  end

  # GET /externalpanels/1
  # GET /externalpanels/1.xml
  def show
    @externalpanel = Externalpanel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @externalpanel }
    end
  end

  # GET /externalpanels/new
  # GET /externalpanels/new.xml
  def new
    @externalpanel = Externalpanel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @externalpanel }
    end
  end

  # GET /externalpanels/1/edit
  def edit
    @externalpanel = Externalpanel.find(params[:id])
  end

  # POST /externalpanels
  # POST /externalpanels.xml
  def create
    @externalpanel = Externalpanel.new(params[:externalpanel])

    respond_to do |format|
      if @externalpanel.save
        format.html { redirect_to(@externalpanel, :notice => 'Externalpanel was successfully created.') }
        format.xml  { render :xml => @externalpanel, :status => :created, :location => @externalpanel }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @externalpanel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /externalpanels/1
  # PUT /externalpanels/1.xml
  def update
    @externalpanel = Externalpanel.find(params[:id])

    respond_to do |format|
      if @externalpanel.update_attributes(params[:externalpanel])
        format.html { redirect_to(@externalpanel, :notice => 'Externalpanel was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @externalpanel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /externalpanels/1
  # DELETE /externalpanels/1.xml
  def destroy
    @externalpanel = Externalpanel.find(params[:id])
    @externalpanel.destroy

    respond_to do |format|
      format.html { redirect_to(externalpanels_url) }
      format.xml  { head :ok }
    end
  end
end
