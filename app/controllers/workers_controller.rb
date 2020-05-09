class WorkersController < ApplicationController
  def index
    if current_admin.worker_attributes.length === 0
       redirect_to new_admin_worker_url(current_admin.id)
    end
  end

  def new
    @worker = Admin.find(params[:admin_id])
  end

  def create
    @worker_attribute = current_admin.worker_attributes.new(worker_attributes_params)
    if @worker_attribute.save
      redirect_to  admin_workers_url(current_admin.id)
    else
      render :new
    end
  end

  private

  def worker_attributes_params
    params.require(:worker_attributes).permit(
                        :nom_com,
                        :sede,
                        :tip_doc,
                        :tel_con,
                        :sexo,
                        :address,
                        :localidad,
                        :zone,
                        :bicicleta,
                        :automovil,
                        :moto,
                        :taxi,
                        :walk,
                        :n_peo_worker,
                        :n_peo_old,
                        :n_peo_young,
                        :dis_diabetes,
                        :dis_cardio,
                        :dis_hypertension,
                        :dis_acv,
                        :dis_inmunosuopressant,
                        :dis_obs_cronic,
                        :dis_malnutrition,
                        :dis_smoker)
  end
end
