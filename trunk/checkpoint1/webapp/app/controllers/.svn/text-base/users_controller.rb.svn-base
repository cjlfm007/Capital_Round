class UsersController < ApplicationController

  def index
    @shortnotice = params[:shortnotice]
    @user = User.find(params[:id])    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user }
    end
  end

  def my_account
  end
  
  def show
  end

  
  def edit
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  def update

    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      # sign_in @user
      redirect_to :action =>'index', :id => params[:id]
    else
      render 'edit'

    end
  end

  # DELETE /investors/1
  # DELETE /investors/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to home_path }
      format.json { head :no_content }
    end
  end

  
end
