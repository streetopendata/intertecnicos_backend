class DailyEntrysController < ApplicationController
  def new
      @worker = Admin.find(params[:admin_id])
  end

  def create
    @daily_entry = current_admin.daily_entrys.new(daily_entrys_params)
    if @daily_entry.save
      redirect_to  admin_workers_url(current_admin.id)
    else
      render :new
    end
  end

  private
  def daily_entrys_params
    params.require(:daily_entrys)
          .permit(
                  :temperature_ini,
                  :temperature_fin,
                  :respiratory_symptom,
                  :contact_with_infected,
                  :start_day,
                  :final_day)
  end
end
