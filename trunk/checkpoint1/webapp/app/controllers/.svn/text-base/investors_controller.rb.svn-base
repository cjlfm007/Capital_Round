class InvestorsController < ApplicationController
  # GET /investors
  # GET /investors.json
  def index

  end

  # GET /investors/1
  # GET /investors/1.json
  def show
    @investor = Investor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @investor }
    end
  end

  # GET /investors/new
  # GET /investors/new.json
  def new
    @investor = Investor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @investor }
    end
  end

  # GET /investors/1/edit
  def edit
    @investor = Investor.find(params[:id])
  end

  # POST /investors
  # POST /investors.json
  def create
    @investor = Investor.new(params[:investor])

    respond_to do |format|
      if @investor.save
        format.html { redirect_to @investor, notice: 'Investor was successfully created.' }
        format.json { render json: @investor, status: :created, location: @investor }
      else
        format.html { render action: "new" }
        format.json { render json: @investor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /investors/1
  # PUT /investors/1.json
  def update
    @investor = Investor.find(params[:id])

    respond_to do |format|
      if @investor.update_attributes(params[:investor])
        format.html { redirect_to @investor, notice: 'Investor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @investor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investors/1
  # DELETE /investors/1.json
  def destroy
    @investor = Investor.find(params[:id])
    @investor.destroy

    respond_to do |format|
      format.html { redirect_to investors_url }
      format.json { head :no_content }
    end
  end
  
    
  def addcompany
  	if session[:id]==nil || session[:id]==0
  		redirect_to :controller => 'users', :action => 'login'
  	else
  	  if Investor.find_by_startup_id_and_user_id(params[:newstartupid],session[:id]) == nil 
   		@investor = Investor.new(params[:investor])
   	    @investor.user_id=session[:id]
   	    @investor.startup_id=params[:newstartupid]
      else
      	@investor=Investor.find_by_startup_id_and_user_id(params[:newstartupid],session[:id])
   	  end
	  @investor.ismentor=1
   	  if @investor.save
    	redirect_to :action =>'index', :id => session[:id], :shortnotice => 'You were successfully added to the list of Mentors for '+Startup.find(params[:newstartupid]).name
 	  else
    	format.html { render action: "new" }
    	format.json { render json: @investor.errors, status: :unprocessable_entity }
      end

  	end
  end

  def removecompany
  	if session[:id]==nil || session[:id]==0 
  	  redirect_to :controller => 'users', :action => 'login'
  	else
   	  @investor = Investor.find_by_startup_id_and_user_id(params[:newstartupid],session[:id])
   	  if @investor.isinvestor==nil and @investor.isfollower==nil and @investor.isowner==nil
    	@investor.destroy
      else
    	@investor.ismentor=nil
    	@investor.save
      end
      redirect_to :action =>'index', :id => session[:id], :shortnotice => 'You were successfully removed from the list of Mentors for '+Startup.find(params[:newstartupid]).name
  	end  	
  end
  
  
  def people
    @startups = Startup.all
    @peoples = User.all
  end
  
  def newstartup
  	if session[:id]==1
  		redirect_to :controller => 'startups', :action => 'index'
  	end
  end
  
end
