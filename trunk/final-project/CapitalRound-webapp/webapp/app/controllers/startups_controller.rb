class StartupsController < ApplicationController
  
  def index
    @startups = Startup.all

    session[:startup_id] = nil
    session[:connection_type] = nil

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @startups }
    end
  end

  def show
    @startup = Startup.find(params[:id])
    @startup_investors = @startup.Investor_users.all.uniq
    @startup_followers = @startup.Follower_users.all.uniq
    @startup_owners = @startup.Owner_users.all.uniq
    #@startup_documents = @startup.Companydocuments.all
    @allfield = Allfield.find_by_view_flag(1)
    @startup_description = @startup.Companydescriptions.find_by_allfield_id(@allfield.id)
    @startup_teams = @startup.Companyteams
    @startup_updates = @startup.Companyupdates

    session[:startup_id] = @startup.id

    if session[:id] != 0 and session[:id] != nil
      @user = User.find(session[:id])

      connection_type=0
      if @startup_investors.include? @user
        connection_type=1
      end
      if @startup_owners.include? @user
        connection_type=2
      end

      session[:connection_type] = connection_type

    else
      session[:connection_type] = 0
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @startup }
    end
    
  end


  def new
    @startup = Startup.new

   # respond_to do |format|
   #   format.html # new.html.erb
   #   format.json { render json: @startup }
   # end
  end


  def edit
    @startup = Startup.find(session[:startup_id])
  end
  
  #def editcapital
    #@startup = Startup.find(session[:startup_id])
  #end


  def create
    @startup = Startup.new(params[:startup])
    @startup.status = 'new'
    respond_to do |format|
        
      if @startup.save
		     params[:notice]='Startup was successfully created.'

         @owner = Owner.new
         @owner.startup_id = @startup.id
         @owner.user_id = session[:id]
         @owner.status = 1
         @owner.save
         format.html { redirect_to @startup }

      else
         format.html { render action: "new" }
         format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
   	
   	end

  end

  def update
    @startup = Startup.find(session[:startup_id])
    respond_to do |format|

      if @startup.update_attributes(params[:startup])

      	#if params[:nextstep] == 'next'
        #  format.html { render action: "editcapital" }
        #else
          format.html { render action: "show" }
        #end
       # format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def developermode
    @startups = Startup.all
  end
  
  def detailed
    @startup = Startup.find(session[:startup_id])
    @companydescriptions = @startup.Companydescriptions
  end
  
  def mentors
    @startup = Startup.find(session[:startup_id])

  end
  
  def team
    @startup = Startup.find(session[:startup_id])
    @startup_teams = @startup.Companyteams
  end

  def documents
  end


end
