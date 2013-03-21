class StartupsController < ApplicationController
  # GET /startups
  # GET /startups.json

  
  def index
    @startups = Startup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @startups }
    end
  end

  def index_old
    @startups = Startup.all

    respond_to do |format|
      format.html # portfolio.html.erb
      format.json { render json: @startups }
    end
  end

  # GET /startups/1
  # GET /startups/1.json
  def show
    @startup = Startup.find(params[:id])
    
   	$connectiontype=0	

    if @startup.Investors.find_by_user_id(session[:id]) != nil
	   	if @startup.Investors.find_by_user_id_and_isowner(session[:id],1) != nil    
    		$connectiontype=2
    	else
    		$connectiontype=1
    	end
    end

    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @startup }
    end
    
  end

  # GET /startups/new
  # GET /startups/new.json
  def new
    @startup = Startup.new

   # respond_to do |format|
   #   format.html # new.html.erb
   #   format.json { render json: @startup }
   # end
  end

  # GET /startups/1/edit
  def edit
    @startup = Startup.find(params[:id])
  end
  
  def editcapital
    @startup = Startup.find(params[:id])
  end

  # POST /startups
  # POST /startups.json
  def create
    @startup = Startup.new(params[:startup])
    @startup.status = 'new'
    respond_to do |format|
        
      if @startup.save
		 params[:notice]='Startup was successfully created.'
      else
         format.html { render action: "new" }
         format.json { render json: @startup.errors, status: :unprocessable_entity }
      end

    @investor = Investor.new
    @investor.startup_id = @startup.id
    @investor.user_id = session[:id]
    @investor.isowner = 1
    @investor.save
   	format.html { redirect_to @startup }
   	
   	    end

  end

  # PUT /startups/1
  # PUT /startups/1.json
  def update
    @startup = Startup.find(params[:id])

    respond_to do |format|

      if @startup.update_attributes(params[:startup])
      	#if params[:nextstep] == 'next'
        #  format.html { render action: "editcapital" }
        #else
          format.html { render action: "show" }
        #end
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
  end



  # DELETE /startups/1
  # DELETE /startups/1.json
  def destroy
    @startup = Startup.find(params[:id])
    @startup.destroy

    respond_to do |format|
      format.html { redirect_to startups_url }
      format.json { head :no_content }
    end
  end
  
  def developermode
    @startups = Startup.all
  end
  
  def detailed
    @startup = Startup.find(params[:id])
    @companydescriptions = @startup.Companydescriptions
  end
  
  def mentors
  end
  
  def team
  end

  def documents
  end


end
