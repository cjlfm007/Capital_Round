class UsersController < ApplicationController

  def index
    @user = User.find(params[:id])
    @user_startups = (@user.Owner_startups + @user.Investor_startups + @user.Follower_startups).uniq
    for startup in @user_startups
      if @user_updates == nil
        @user_updates = startup.Companyupdates
      else
        @user_updates = @user_updates + startup.Companyupdates
      end
    end
    if @user_updates != nil
      @user_updates.sort! { |y, x| x["newsdate"] <=> y["newsdate"] }
    end

    if params[:id]==session[:id].to_s()
      session[:owner_type]=1
    else
      session[:owner_type]=0
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user }
    end
  end

  def follow
    @user = User.find(params[:id])
    if params[:id]==session[:id].to_s()
      session[:owner_type]=1
    else
      session[:owner_type]=0
    end
  end

  def invest
    @user = User.find(params[:id])
    if params[:id]==session[:id].to_s()
      session[:owner_type]=1
    else
      session[:owner_type]=0
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
      flash[:success] = "Profile updated successfully"
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
