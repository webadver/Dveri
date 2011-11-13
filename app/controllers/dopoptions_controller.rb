class DopoptionsController < ApplicationController
  # GET /dopoptions
  # GET /dopoptions.xml
  def index
    @dopoptions = Dopoption.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dopoptions }
    end
  end

  # GET /dopoptions/1
  # GET /dopoptions/1.xml
  def show
    @dopoption = Dopoption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dopoption }
    end
  end

  # GET /dopoptions/new
  # GET /dopoptions/new.xml
  def new
    @dopoption = Dopoption.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dopoption }
    end
  end

  # GET /dopoptions/1/edit
  def edit
    @dopoption = Dopoption.find(params[:id])
  end

  # POST /dopoptions
  # POST /dopoptions.xml
  def create
    @dopoption = Dopoption.new(params[:dopoption])

    respond_to do |format|
      if @dopoption.save
        format.html { redirect_to(@dopoption, :notice => 'Dopoption was successfully created.') }
        format.xml  { render :xml => @dopoption, :status => :created, :location => @dopoption }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dopoption.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dopoptions/1
  # PUT /dopoptions/1.xml
  def update
    @dopoption = Dopoption.find(params[:id])

    respond_to do |format|
      if @dopoption.update_attributes(params[:dopoption])
        format.html { redirect_to(@dopoption, :notice => 'Dopoption was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dopoption.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dopoptions/1
  # DELETE /dopoptions/1.xml
  def destroy
    @dopoption = Dopoption.find(params[:id])
    @dopoption.destroy

    respond_to do |format|
      format.html { redirect_to(dopoptions_url) }
      format.xml  { head :ok }
    end
  end
end
