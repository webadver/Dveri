class JambsController < ApplicationController
  # GET /jambs
  # GET /jambs.xml
  def index
    @jambs = Jamb.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @jambs }
    end
  end

  # GET /jambs/1
  # GET /jambs/1.xml
  def show
    @jamb = Jamb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @jamb }
    end
  end

  # GET /jambs/new
  # GET /jambs/new.xml
  def new
    @jamb = Jamb.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @jamb }
    end
  end

  # GET /jambs/1/edit
  def edit
    @jamb = Jamb.find(params[:id])
  end

  # POST /jambs
  # POST /jambs.xml
  def create
    @jamb = Jamb.new(params[:jamb])

    respond_to do |format|
      if @jamb.save
        format.html { redirect_to(@jamb, :notice => 'Jamb was successfully created.') }
        format.xml  { render :xml => @jamb, :status => :created, :location => @jamb }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @jamb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /jambs/1
  # PUT /jambs/1.xml
  def update
    @jamb = Jamb.find(params[:id])

    respond_to do |format|
      if @jamb.update_attributes(params[:jamb])
        format.html { redirect_to(@jamb, :notice => 'Jamb was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @jamb.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /jambs/1
  # DELETE /jambs/1.xml
  def destroy
    @jamb = Jamb.find(params[:id])
    @jamb.destroy

    respond_to do |format|
      format.html { redirect_to(jambs_url) }
      format.xml  { head :ok }
    end
  end
end
