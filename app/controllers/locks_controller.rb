class LocksController < ApplicationController
  # GET /locks
  # GET /locks.xml


  def index
    @locks = Lock.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @locks }
    end
  end

  # GET /locks/1
  # GET /locks/1.xml
  def show
    @lock = Lock.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lock }
    end
  end

  # GET /locks/new
  # GET /locks/new.xml
  def new
    @lock = Lock.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lock }
    end
  end

  # GET /locks/1/edit
  def edit
    @lock = Lock.find(params[:id])
  end

  # POST /locks
  # POST /locks.xml
  def create
    @lock = Lock.new(params[:lock])

    respond_to do |format|
      if @lock.save
        format.html { redirect_to(@lock, :notice => 'Lock was successfully created.') }
        format.xml  { render :xml => @lock, :status => :created, :location => @lock }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lock.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /locks/1
  # PUT /locks/1.xml
  def update
    @lock = Lock.find(params[:id])

    respond_to do |format|
      if @lock.update_attributes(params[:lock])
        format.html { redirect_to(@lock, :notice => 'Lock was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lock.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /locks/1
  # DELETE /locks/1.xml
  def destroy
    @lock = Lock.find(params[:id])
    @lock.destroy

    respond_to do |format|
      format.html { redirect_to(locks_url) }
      format.xml  { head :ok }
    end
  end
end
