class InternalpanelsController < ApplicationController
  # GET /internalpanels
  # GET /internalpanels.xml
  def index
    @internalpanels = Internalpanel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @internalpanels }
    end
  end

  # GET /internalpanels/1
  # GET /internalpanels/1.xml
  def show
    @internalpanel = Internalpanel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @internalpanel }
    end
  end

  # GET /internalpanels/new
  # GET /internalpanels/new.xml
  def new
    @internalpanel = Internalpanel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @internalpanel }
    end
  end

  # GET /internalpanels/1/edit
  def edit
    @internalpanel = Internalpanel.find(params[:id])
  end

  # POST /internalpanels
  # POST /internalpanels.xml
  def create
    @internalpanel = Internalpanel.new(params[:internalpanel])

    respond_to do |format|
      if @internalpanel.save
        format.html { redirect_to(@internalpanel, :notice => 'Internalpanel was successfully created.') }
        format.xml  { render :xml => @internalpanel, :status => :created, :location => @internalpanel }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @internalpanel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /internalpanels/1
  # PUT /internalpanels/1.xml
  def update
    @internalpanel = Internalpanel.find(params[:id])

    respond_to do |format|
      if @internalpanel.update_attributes(params[:internalpanel])
        format.html { redirect_to(@internalpanel, :notice => 'Internalpanel was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @internalpanel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /internalpanels/1
  # DELETE /internalpanels/1.xml
  def destroy
    @internalpanel = Internalpanel.find(params[:id])
    @internalpanel.destroy

    respond_to do |format|
      format.html { redirect_to(internalpanels_url) }
      format.xml  { head :ok }
    end
  end
end
