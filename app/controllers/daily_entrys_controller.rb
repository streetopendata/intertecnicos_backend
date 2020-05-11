class DailyEntrysController < ApplicationController
  def new
      @worker = Admin.find(params[:admin_id])
  end
end
