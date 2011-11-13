class DoplocksController < ApplicationController
  # GET /doplocks
  # GET /doplocks.xml
  def index
    @doplocks = Doplock.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @doplocks }
    end
  end

  # GET /doplocks/1
  # GET /doplocks/1.xml
  def show
    @doplock = Doplock.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @doplock }
    end
  end

  # GET /doplocks/new
  # GET /doplocks/new.xml
  def new
    @doplock = Doplock.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @doplock }
    end
  end

  # GET /doplocks/1/edit
  def edit
    @doplock = Doplock.find(params[:id])
  end

  # POST /doplocks
  # POST /doplocks.xml
  def create
    @doplock = Doplock.new(params[:doplock])

    respond_to do |format|
      if @doplock.save
        format.html { redirect_to(@doplock, :notice => 'Doplock was successfully created.') }
        format.xml  { render :xml => @doplock, :status => :created, :location => @doplock }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @doplock.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /doplocks/1
  # PUT /doplocks/1.xml
  def update
    @doplock = Doplock.find(params[:id])

    respond_to do |format|
      if @doplock.update_attributes(params[:doplock])
        format.html { redirect_to(@doplock, :notice => 'Doplock was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @doplock.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /doplocks/1
  # DELETE /doplocks/1.xml
  def destroy
    @doplock = Doplock.find(params[:id])
    @doplock.destroy

    respond_to do |format|
      format.html { redirect_to(doplocks_url) }
      format.xml  { head :ok }
    end
  end
end
