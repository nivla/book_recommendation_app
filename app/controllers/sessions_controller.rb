class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    begin
      user = User.find_by_email! email
      if user.authenticate password
        session.update user_id: user.id
        redirect_to books_path, notice: "signed succesfully"
      end
    rescue ActiveRecord::RecordNotFound
      flash.now[:error] = "Invalid email or password."
      render :new
    end
  end

  def destroy
    session.destroy
    redirect_to root_path
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end

  def email
    session_params.fetch(:email)
  end

  def password
    session_params.fetch(:password)
  end
end
