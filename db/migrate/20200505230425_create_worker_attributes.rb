class CreateWorkerAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :worker_attributes do |t|
      t.string :nom_com
      t.string :sede
      t.string :tip_doc
      t.string :tel_con
      t.string :sexo
      t.string :address
      t.string :localidad
      t.string :zone
      t.boolean :bicicleta
      t.boolean :automovil
      t.boolean :moto
      t.boolean :taxi
      t.boolean :walk
      t.integer :n_peo_worker
      t.integer :n_peo_old
      t.integer :n_peo_young
      t.boolean :dis_diabetes
      t.boolean :dis_cardio
      t.boolean :dis_hypertension
      t.boolean :dis_acv
      t.boolean :dis_inmunosuopressant
      t.boolean :dis_obs_cronic
      t.boolean :dis_malnutrition
      t.boolean :dis_smoker
      t.references :admin, foreign_key: true

      t.timestamps
    end
  end
end
