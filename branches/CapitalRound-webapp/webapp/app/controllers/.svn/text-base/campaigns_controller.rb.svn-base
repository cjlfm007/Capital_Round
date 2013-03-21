class CampaignsController < ApplicationController
  # GET /campaigns
  # GET /campaigns.json
  def index
    @campaigns = Campaign.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @campaigns }
    end
  end

  # GET /campaigns/1
  # GET /campaigns/1.json


  # GET /campaigns/new
  # GET /campaigns/new.json
  def new
    @campaign = Campaign.new

    #  respond_to do |format|
    #   format.html # new.html.erb
    #  format.json { render json: @campaign }
    # end
  end


  # GET /campaigns/1/edit
  def edit
    @startup =Startup.find(session[:startup_id])
    @campaign = @startup.Campaign
  end

  def secondstep
    @startup =Startup.find(session[:startup_id])
    @campaign = @startup.Campaign

    @companydescriptions = Array.new(20)

    @i=0
    for allfield in Allfield.find_all_by_view_flag(3)
      @i = @i +1
      @companydescriptions[@i] = @startup.Companydescriptions.find_by_allfield_id(allfield.id)
      if @companydescriptions[@i] == nil
        @companydescriptions[@i] = Companydescription.new
        @companydescriptions[@i].allfield_id = allfield.id
      end
    end
  end

  # POST /campaigns
  # POST /campaigns.json
  def create
    @campaign = Campaign.new(params[:campaign])
    @campaign.startup_id = session[:startup_id]
    @campaign.raised_sum = 0
    @campaign.status = 1

    respond_to do |format|
      if @campaign.save
        format.html{redirect_to  :controller => 'startups', :action =>'secondstep'}
        format.json { render json: @campaign, status: :created, location: @campaign }
      else
        format.html { render action: "new" }
        format.json { render json: @campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  def summary
    @startup =Startup.find(session[:startup_id])
    @campaign = @startup.Campaign
  end

  def submit_campaign



    startup =Startup.find(session[:startup_id])
    campaign = startup.Campaign

    i=0
    for allfield in Allfield.find_all_by_view_flag(3)
      if startup.Companydescriptions.find_by_allfield_id(allfield.id) == nil
        i=1
      end
    end


    if i=0
      campaign.update_attributes(:status => 2)
    else
      flash[:error] = "Error"
    end

    redirect_to  :action =>'summary'

  end

  # PUT /campaigns/1
  # PUT /campaigns/1.json
  def update
    startup =Startup.find(session[:startup_id])
    @campaign =   startup.Campaign

    respond_to do |format|
      if params[:route] == "funds"
        @campaign.status = 3

        @campaign.update_attributes(params[:campaign])
        format.html { redirect_to controller: 'funds', action: 'approval'}

      else
        if @campaign.update_attributes(params[:campaign])
          format.html { redirect_to  :action =>'secondstep' }
        else
          format.html { render action: "edit" }
          format.json { render json: @campaign.errors, status: :unprocessable_entity }
        end
      end
    end
  end
  # DELETE /campaigns/1
  # DELETE /campaigns/1.json
  def destroy
    startup =Startup.find(session[:startup_id])
    @campaign = startup.Campaign
    @campaign.destroy

    respond_to do |format|
      format.html { redirect_to :controller => 'startups', :id => session[:startup_id] }
      format.json { head :no_content }
    end
  end
end
