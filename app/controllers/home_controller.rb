class HomeController < ApplicationController
  def index
  end

  def sedes
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

end
