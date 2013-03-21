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
   @startup = Startup.find(params[:newstartupid])
   #raised_sum = params[:raised_sum]
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
    @investor.user_id=session[:id]
    @investor.startup_id = params[:startup_id]

    @startup = Startup.find(session[:startup_id])
    @campaign = @startup.Campaign

   if @investor.sum != nil
    @campaign.raised_sum = @campaign.raised_sum + @investor.sum
   end
    @campaign.update_attributes(params[:campaign])

     #session[:raised_sum] =  params[:raised_sum].to_i + @investor.sum


    respond_to do |format|
      if @investor.save

        format.html {redirect_to :controller =>'startups', :action =>'show', :id =>  @investor.startup_id}#, :raised_sum => @startup.raised_sum }
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
  
    
  def followcompany

    @user = User.find(session[:id])
    @startup = Startup.find(session[:startup_id])

  	if session[:id]==nil || session[:id]==0
  		redirect_to :controller => 'users', :action => 'login'
  	#else
  	 # if @startup.Investor_users.all.include? @user
      #  @investor=@startup.Investors.find_by_user_id(session[:id])
      else
        @follower = Follower.new
        @follower.startup_id = @startup.id
        @follower.user_id = session[:id]

      end

      if @follower.save
        session[:startup_id]=nil
        redirect_to :controller => 'users', :action =>'index', :id => @user.id, :shortnotice => 'You were successfully added to the list of Followers for '+ @startup.name
      else
        format.html { render action: "new" }
        format.json { render json: @investor.errors, status: :unprocessable_entity }
      end

  	end

  def unfollowcompany

    @user = User.find(session[:id])
    @startup = Startup.find(session[:startup_id])

  	if session[:id]==nil || session[:id]==0 
  	  redirect_to :controller => 'users', :action => 'login'
  	else
      @follower = @startup.Followers.find_by_user_id(session[:id])
      @follower.destroy
      session[:startup_id]=nil
      redirect_to :controller => 'users', :action =>'index', :id => session[:id], :shortnotice => 'You were successfully removed from the list of Followers for '+@startup.name
  	end  	
  end
  
  
  def people
    @users = User.all
  end
  
  def newstartup
  	if session[:id]==1
  		redirect_to :controller => 'startups', :action => 'index'
  	end
  end

end
  

