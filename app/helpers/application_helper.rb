module ApplicationHelper

  def current_user

  end

  def user_signed_in?
    session[:user_id].present?
  end
end
