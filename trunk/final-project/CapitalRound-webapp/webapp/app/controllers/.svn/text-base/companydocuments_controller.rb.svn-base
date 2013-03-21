class CompanydocumentsController < ApplicationController
  # GET /companydocuments
  # GET /companydocuments.json
  def index

  	
    @companydocuments = Companyocument.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @companydocuments }
    end

  end

  # GET /companydocuments/1
  # GET /companydocuments/1.json
  def show

  	
    @companydocument = Companydocument.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @companydocument }
    end

  end

  # GET /companydocuments/new
  # GET /companydocuments/new.json
  def new

  	
    @companydocument = Companydocument.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @companydocument }
    end

  end

  # GET /companydocuments/1/edit
  def edit
  

    @companydocument = Companydocument.find(params[:id])

  end

  # POST /companydocuments
  # POST /companydocuments.json
  def create

  	
    @companydocument = Companydocument.new(params[:companydocument])

    respond_to do |format|
      if @companydocument.save
        format.html { redirect_to @companydocument, notice: 'Companydocument was successfully created.' }
        format.json { render json: @companydocument, status: :created, location: @companydocument }
      else
        format.html { render action: "new" }
        format.json { render json: @companydocument.errors, status: :unprocessable_entity }
      end
    end

  end

  # PUT /companydocuments/1
  # PUT /companydocuments/1.json
  def update
  
if session[:id] == nil
redirect_to :controller => 'home', :action => 'demo' and return
else
  	
    @companydocument = Companydocument.find(params[:id])

    respond_to do |format|
      if @companydocument.update_attributes(params[:companydocument])
        format.html { redirect_to @companydocument, notice: 'Companydocument was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @companydocument.errors, status: :unprocessable_entity }
      end
    end
end
  end

  # DELETE /companydocuments/1
  # DELETE /companydocuments/1.json
  def destroy
  	
    @companydocument = Companydocument.find(params[:id])
    @companydocument.destroy

    respond_to do |format|
      format.html { redirect_to companydocuments_url }
      format.json { head :no_content }
    end
  end
end
