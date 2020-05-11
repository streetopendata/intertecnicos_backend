class ApplicationController < ActionController::Base

  protect_from_forgery

  def after_sign_in_path_for(resource)
    if resource.class.to_s === "Customer"
      store_path
    else
      if resource.role == 'Admin'
        admins_path
      else
        # homepage_worker_url
        admin_workers
      end
    end
  end

end
