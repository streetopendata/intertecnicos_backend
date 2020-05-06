class WorkersController < ApplicationController
  def index
  end
  def new
    @worker = Admin.find(params[:admin_id])    
  end
end
