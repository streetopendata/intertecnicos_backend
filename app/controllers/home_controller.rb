class HomeController < ApplicationController
  def index
  end

  def sedes
  end

  def engines
    @titile= "Bobinado de motores, montaje de subestaciones e instalaciones electricas"
    @meta = [{:content => "Bobinado de motores, venta de motores, mantenimiento electrico, tableros industriales.",
            :property => "og:description"}, {:content => "Bobinado de motores, venta de motores, mantenimiento electrico, tableros industriales.",
                    :property => "description"}]
  end


  def electric_plants_details
  end
  def electric_networks_details
  end
  def electric_substation_details
  end
  def electric_engines_details
  end

  def download_intertecnicos
    send_file(
      "#{Rails.root}/public/intertecnicos.zip",
      filename: "intertecnicos.zip",
      type: "application/zip"
    )
  end

  def download_file
    send_file(
      "#{Rails.root}/public/antonio-raign-arergs.zip",
      filename: "antonio-raign-arergs.zip",
      type: "application/zip"
    )
  end

  def robots
    respond_to :text
    expires_in 6.hours, public: true
  end


end
