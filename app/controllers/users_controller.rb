require ('pry')


class UsersController < ApplicationController
  
    ## Action for adding a new user for new form
  def new
    @user = User.new
  end

  

    ## Action for creating a new user
  def create
    ## check if the username is already in the database
       @user = User.create(user_params)

   if @user.errors.any?
    #   ## if the username is present, then redirect to the login page
      render template: "/users/new"
    else
      ## If the username is not present, then it creates their account
       user = User.find_by({name: params[:user][:name]})
    ## Start the session for the user
       session[:user_id] = user.id
       redirect_to user_path(user)
  end
end  



  def show
    ##Check to see if there is a session.  If not logged in don't let person go to User Paths
    if session[:user_id] == nil
      redirect_to root_path
    ##Checkt to see if logged in if logged in eventually redirect to the user show page
    elsif :logged_in? && :check_current_user?
    actual_user = User.find(session[:user_id])
        @current_user = User.find(session[:user_id])
    else
        redirect_to user_path(session[:user_id])
      end
  end
    ##Method for finding user ID when user wants to change avatar
    def edit
      
    end

    ##Method for changing the avatar
    def update
       @user = User.find(session[:user_id])
       if logged_in? && check_current_user? 
        @user.pic = params[:image]
        @user.save(:validate => false)
        redirect_to user_path(@user)
      else
        redirect_to user_path(@user)
      end
    end


  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :pic)
  end


  


  end
