class ApplicationController < ActionController::Base
  def after_sign_in_path_for(_resource)
    if current_user.employee?
      employee_url(current_user.id)
    elsif current_user.admin?
      admin_url(current_user.id)
    end
  end
end
