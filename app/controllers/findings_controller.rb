class FindingsController < ApplicationController
  # GET /findings
  # GET /findings.xml
  def index
    @findings = Finding.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @findings }
    end
  end

  # GET /findings/1
  # GET /findings/1.xml
  def show
    @finding = Finding.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @finding }
    end
  end

  # GET /findings/new
  # GET /findings/new.xml
  def new
    @finding = Finding.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @finding }
    end
  end

  # GET /findings/1/edit
  def edit
    @finding = Finding.find(params[:id])
  end

  # POST /findings
  # POST /findings.xml
  def create
    @finding = Finding.new(params[:finding])

    respond_to do |format|
      if @finding.save
        format.html { redirect_to(@finding, :notice => 'Finding was successfully created.') }
        format.xml  { render :xml => @finding, :status => :created, :location => @finding }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @finding.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /findings/1
  # PUT /findings/1.xml
  def update
    @finding = Finding.find(params[:id])

    respond_to do |format|
      if @finding.update_attributes(params[:finding])
        format.html { redirect_to(@finding, :notice => 'Finding was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @finding.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /findings/1
  # DELETE /findings/1.xml
  def destroy
    @finding = Finding.find(params[:id])
    @finding.destroy

    respond_to do |format|
      format.html { redirect_to(findings_url) }
      format.xml  { head :ok }
    end
  end
end
