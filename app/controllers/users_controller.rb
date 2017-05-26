class UsersController < ApplicationController
  def new
    render "new.html.erb"
  end

  def create
    user = User.create(
      first_name: params[:first_name],
      email: params[:email],
      password: params[:password]
      )
    if user.save
      session[:user_id] = user.id
      flash[:success] = "Account successfully created!"
      redirect_to "/contacts"
    else
      flash[:warning] = "Invalid email or password."
      redirect_to "/signup"
    end
  end
end
