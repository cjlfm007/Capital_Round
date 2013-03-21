class AuthenticationsController < ApplicationController


# ---------------- Demo ----------------------
  
  def demo_login
    if params[:user][:username] == 'Sergey' and params[:user][:password] == '234s'
      session[:id]=0
      redirect_to  :controller => 'home', :action =>'index'
    else
      redirect_to :controller => 'home', :action => 'demo'
    end 
  end

# ---------------- End demo -----------------

  def login
    @authentication = Authentication.new
    @authentication.username = params[:username]
  end
  
  def process_login
    if authentication = Authentication.authenticate(params[:authentication][:username], params[:authentication][:password])
      session[:id]=authentication.User.id
      redirect_to  :controller => 'users', :action =>'index', :id => session[:id]
    else
      redirect_to :action => 'login', :username => params[:authentication][:username]
    end 
  end 

  def logout
    reset_session
    # ---------------- Demo -----------------
    session[:id]=0 
    # ---------------- End demo -----------------
    flash[:message] = 'Logged out'
    redirect_to :controller => 'home', :action => 'index'
  end
  
    
  def checklogin
    if session[:id]!=nil
      redirect_to :controller => params[:gotocontroller], :action => params[:gotoaction], :id => params[:id]
    else
    redirect_to :action => 'login'
    end
  end
  
  def new

    @authentication = Authentication.new
    @user = @authentication.build_User

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  def create
 
    @authentication = Authentication.new(params[:authentication])
    @authentication.make_hash(params[:authentication][:password])
    @user = @authentication.create_User(params[:user])

    reset_session
  
    respond_to do |format|
      if @authentication.save
        session[:id]=@user.id
        format.html { redirect_to controller: 'users', action: 'index', id: @user.id}
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  
  end


  # GET /authentications/1/edit
  def edit
    @authentication = Authentication.find(params[:id])
  end

  # PUT /authentications/1
  # PUT /authentications/1.json
  def update
    @authentication = Authentication.find(params[:id])

    respond_to do |format|
      if @authentication.update_attributes(params[:authentication])
        format.html { redirect_to @authentication, notice: 'Authentication was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @authentication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authentications/1
  # DELETE /authentications/1.json
  def destroy
    @authentication = Authentication.find(params[:id])
    @authentication.destroy

    respond_to do |format|
      format.html { redirect_to authentications_url }
      format.json { head :no_content }
    end
  end
end
