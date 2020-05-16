class DailyEntrysController < ApplicationController
  def new
      @worker = Admin.find(params[:admin_id])
  end

  def create
    @daily_entry = current_admin.daily_entrys.new(daily_entrys_params)
    if @daily_entry.save
      send_mail
      redirect_to  admin_workers_url(current_admin.id)
    else
      render :new
    end
  end

  def send_mail
    require 'net/http'
    require 'uri'
    require 'json'

    uri = URI.parse("https://api.emailjs.com/api/v1.0/email/send")
    # uri = URI.parse("https://ptsv2.com/t/9xdfe-1589648950/post")
    header = {'Content-Type': 'application/json'}
    data = {
        :service_id => 'smtp_server',
        :template_id => 'template_startop',
        :user_id => 'user_JihHQvk8CoDaJ8e0xdYja',
        :template_params => {
                :from_name => current_admin.worker_attributes.first.nom_com,
                :from_email => current_admin.email,
                :from_temp_ini => daily_entrys_params[:temperature_ini],
                :from_is_sick => daily_entrys_params[:is_sick].to_i === 0 ? "No" :  "Si",
                :from_respiratory_symptom => daily_entrys_params[:respiratory_symptom],
                :from_is_in_contact => daily_entrys_params[:is_in_contact].to_i === 0 ? "No" :  "Si",
                :from_contact_with_infected => daily_entrys_params[:contact_with_infected]},
      }
    # Create the HTTP objects
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Post.new(uri.request_uri, header)
    request.body = data.to_json
    http.use_ssl = (uri.scheme == "https")
    # Send the request
     response = http.request(request)
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
                  :is_in_contact,
                  :is_sick,
                  :final_day)
  end
end
