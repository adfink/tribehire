class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_from_oauth(oauth)
    # binding.pry
    if @user
      # @user.github_client
      session[:user_id] = @user.id
      redirect_to @user
    else
      redirect_to root_path
    end
  end




  # def create
  #   if user = User.from_omniauth(request.env["omniauth.auth"])
  #     session[:user_id] = user.id
  #   end
  #   redirect_to root_path
  # end






  def destroy
    session.clear

    redirect_to root_path
  end

  private
  def oauth
    request.env['omniauth.auth']
  end

end
