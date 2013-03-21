class CompanyupdatesController < ApplicationController
  # GET /companyupdates
  # GET /companyupdates.json
  def index
    @companyupdates = Startup.find(params[:startup_id]).Companyupdates

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @companyupdates }
    end
  end

  # GET /companyupdates/1
  # GET /companyupdates/1.json
  def show
    @companyupdate = Companyupdate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @companyupdate }
    end
  end

  # GET /companyupdates/new
  # GET /companyupdates/new.json
  def new
    @companyupdate = Companyupdate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @companyupdate }
    end
 
  end


  # GET /companyupdates/1/edit
  def edit
    @companyupdate = Companyupdate.find(params[:id])
  end

  # POST /companyupdates
  # POST /companyupdates.json
  def create
  
    @companyupdate = Companyupdate.new(params[:companyupdate])
    @companyupdate.startup_id = params[:startup_id]

    respond_to do |format|
      if @companyupdate.save
        format.html { redirect_to action: 'index', startup_id: params[:startup_id], notice: 'The news was successfully created.' }
      else
        format.html { render action: "new" }
        format.json { render json: @companyupdate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /companyupdates/1
  # PUT /companyupdates/1.json
  def update

    @companyupdate = Companyupdate.find(params[:id])
    @companyupdate.startup_id = params[:startup_id]

    respond_to do |format|
      if @companyupdate.update_attributes(params[:companyupdate])
        format.html { redirect_to action: 'index', startup_id: params[:startup_id], notice: 'The companyupdate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @companyupdate.errors, status: :unprocessable_entity }
      end
    end

  end

  # DELETE /companyupdates/1
  # DELETE /companyupdates/1.json
  def destroy
 
    @companyupdate = Companyupdate.find(params[:id])
    startup_id =  @companyupdate.startup_id
    @companyupdate.destroy

    respond_to do |format|
      format.html { redirect_to action: 'index', startup_id: startup_id }
      format.json { head :no_content }
    end

  end
end
