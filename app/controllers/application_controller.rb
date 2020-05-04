class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    if resource.class.to_s === "Customer"
      store_path
    else
      if resource.role == 'Admin'
        admins_path
      else
        workers_path
      end
    end
  end

end
