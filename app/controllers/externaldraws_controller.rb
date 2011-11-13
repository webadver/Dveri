class ExternaldrawsController < ApplicationController
  # GET /externaldraws
  # GET /externaldraws.xml
  def index
    @externaldraws = Externaldraw.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @externaldraws }
    end
  end

  # GET /externaldraws/1
  # GET /externaldraws/1.xml
  def show
    @externaldraw = Externaldraw.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @externaldraw }
    end
  end

  # GET /externaldraws/new
  # GET /externaldraws/new.xml
  def new
    @externaldraw = Externaldraw.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @externaldraw }
    end
  end

  # GET /externaldraws/1/edit
  def edit
    @externaldraw = Externaldraw.find(params[:id])
  end

  # POST /externaldraws
  # POST /externaldraws.xml
  def create
    @externaldraw = Externaldraw.new(params[:externaldraw])

    respond_to do |format|
      if @externaldraw.save
        format.html { redirect_to(@externaldraw, :notice => 'Externaldraw was successfully created.') }
        format.xml  { render :xml => @externaldraw, :status => :created, :location => @externaldraw }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @externaldraw.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /externaldraws/1
  # PUT /externaldraws/1.xml
  def update
    @externaldraw = Externaldraw.find(params[:id])

    respond_to do |format|
      if @externaldraw.update_attributes(params[:externaldraw])
        format.html { redirect_to(@externaldraw, :notice => 'Externaldraw was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @externaldraw.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /externaldraws/1
  # DELETE /externaldraws/1.xml
  def destroy
    @externaldraw = Externaldraw.find(params[:id])
    @externaldraw.destroy

    respond_to do |format|
      format.html { redirect_to(externaldraws_url) }
      format.xml  { head :ok }
    end
  end
end
