class AddIsSickAndIsInContactToDailyEntry < ActiveRecord::Migration[5.2]
  def change
    add_column :daily_entries, :is_sick, :boolean, default: 0
    add_column :daily_entries, :is_in_contact, :boolean, default: 0
  end
end
