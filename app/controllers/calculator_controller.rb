class CalculatorController < ApplicationController

  def index
    @locks = Lock.all
    @jambs = Jamb.all
    @cylinders = Cylinder.all
    @findings = Finding.all
    @doplocks = Doplock.all
    @dopoptions = Dopoption.all

    @externalpanels = Externalpanel.all
    @internalpanels = Internalpanel.all
    @externaldraw = Externaldraw.joins(:externalpanel_externaldraws).where(:externalpanel_externaldraws => {:externalpanel_id => params[:id]})
    @externalcolor = Externalcolor.joins(:externalpanel_externalcolors).where(:externalpanel_externalcolors => {:externalpanel_id => params[:id]})

#для внутренних панелей
    @internalcolor = Internalcolor.joins(:internalpanel_internalcolors).where(:internalpanel_internalcolors => {:internalpanel_id => params[:internal_id]})
    @internaldraw = Internaldraw.joins(:internalpanel_internaldraws).where(:internalpanel_internaldraws => {:internalpanel_id => params[:internal_id]})

  end

  def show
    @externaldraws = Externaldraw.joins(:externalpanel_externaldraws).where(:externalpanel_externaldraws => {:externalpanel_id => params[:id]})
    @locks = Lock.all
    respond_to do |format|

      format.js { render :xml => @locks }

      format.html
      format.xml { render :xml => @locks }

    end
  end

  def new
    @locks = Lock.all
    @doplocks = Doplock.all
  end

  def sear

    @locks = Lock.all

    respond_to do |format|

      format.js { render :text => @locks }

      format.html
      format.xml

    end
  end


end
