class RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
    welcome_path(resource)
  end
end
