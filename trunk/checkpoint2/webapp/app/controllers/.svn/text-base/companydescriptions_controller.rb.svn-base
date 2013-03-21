class CompanydescriptionsController < ApplicationController
  # GET /companydescriptions
  # GET /companydescriptions.json
  def index
    @companydescriptions = Startup.find(params[:startup_id]).Companydescriptions

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @companydescriptions }
    end
  end

  # GET /companydescriptions/1
  # GET /companydescriptions/1.json
  def show
    @companydescription = Companydescription.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @companydescription }
    end
  end

  # GET /companydescriptions/new
  # GET /companydescriptions/new.json
  def new
    @companydescription = Companydescription.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @companydescription }
    end
  end

  # GET /companydescriptions/1/edit
  def edit
    @companydescription = Companydescription.find(params[:id])
  end

  # POST /companydescriptions
  # POST /companydescriptions.json
  def create
    @companydescription = Companydescription.new(params[:companydescription])
    @companydescription.startup_id = params[:startup_id] 

    respond_to do |format|
      if @companydescription.save
        format.html { redirect_to action: 'index', startup_id: params[:startup_id], notice: 'The info was successfully created.' }
        format.json { render json: @companydescription, status: :created, location: @companydescription }
      else
        format.html { render action: "new" }
        format.json { render json: @companydescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /companydescriptions/1
  # PUT /companydescriptions/1.json
  def update
    @companydescription = Companydescription.find(params[:id])

    respond_to do |format|
      if @companydescription.update_attributes(params[:companydescription])
        format.html { redirect_to action: 'index', startup_id: @companydescription.startup_id, notice: 'The info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @companydescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companydescriptions/1
  # DELETE /companydescriptions/1.json
  def destroy
    @companydescription = Companydescription.find(params[:id])
    startup_id = Companyteam.find(params[:id]).startup_id
    @companydescription.destroy

    respond_to do |format|
      format.html { redirect_to action: 'index', startup_id: startup_id, notice: 'The info was successfully deleted.' }
      format.json { head :no_content }
    end
  end
end
