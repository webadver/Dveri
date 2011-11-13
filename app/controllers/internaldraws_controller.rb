class InternaldrawsController < ApplicationController
  # GET /internaldraws
  # GET /internaldraws.xml
  def index
    @internaldraws = Internaldraw.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @internaldraws }
    end
  end

  # GET /internaldraws/1
  # GET /internaldraws/1.xml
  def show
    @internaldraw = Internaldraw.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @internaldraw }
    end
  end

  # GET /internaldraws/new
  # GET /internaldraws/new.xml
  def new
    @internaldraw = Internaldraw.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @internaldraw }
    end
  end

  # GET /internaldraws/1/edit
  def edit
    @internaldraw = Internaldraw.find(params[:id])
  end

  # POST /internaldraws
  # POST /internaldraws.xml
  def create
    @internaldraw = Internaldraw.new(params[:internaldraw])

    respond_to do |format|
      if @internaldraw.save
        format.html { redirect_to(@internaldraw, :notice => 'Internaldraw was successfully created.') }
        format.xml  { render :xml => @internaldraw, :status => :created, :location => @internaldraw }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @internaldraw.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /internaldraws/1
  # PUT /internaldraws/1.xml
  def update
    @internaldraw = Internaldraw.find(params[:id])

    respond_to do |format|
      if @internaldraw.update_attributes(params[:internaldraw])
        format.html { redirect_to(@internaldraw, :notice => 'Internaldraw was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @internaldraw.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /internaldraws/1
  # DELETE /internaldraws/1.xml
  def destroy
    @internaldraw = Internaldraw.find(params[:id])
    @internaldraw.destroy

    respond_to do |format|
      format.html { redirect_to(internaldraws_url) }
      format.xml  { head :ok }
    end
  end
end
