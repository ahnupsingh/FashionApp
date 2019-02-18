class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: session_params[:email].downcase)
    if user && user.authenticate(session_params[:password])
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_back_or user
    else
      # Create an error message.
       flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to login_path
  end

  private
    def session_params
      params.require(:session).permit(:email, :password)
    end
end