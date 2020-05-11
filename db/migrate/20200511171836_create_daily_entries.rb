class CreateDailyEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_entries do |t|
      t.string :temperature_ini
      t.string :temperature_fin
      t.string :respiratory_symptom
      t.string :contact_with_infected
      t.datetime :start_day
      t.datetime :final_day
      t.references :admin, foreign_key: true

      t.timestamps
    end
  end
end
