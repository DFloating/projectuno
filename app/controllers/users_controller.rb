class UsersController < ApplicationController
  

  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)                                   # new user object with user information from the form. 

    if @user.save                                                   #save to database
      session[:user_id] = @user.id                                  
      redirect_to journals_path, notice: 'User successfully created!'  #if save is successful, following message to be displayed # change the redirect
    else 
      render :new                                                  #if unsuccessful, re-render the new view with errors
    end
  end

  private 

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end


