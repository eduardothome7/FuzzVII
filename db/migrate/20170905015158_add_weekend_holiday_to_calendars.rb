class AddWeekendHolidayToCalendars < ActiveRecord::Migration[5.1]
  def change
    add_column :calendars, :weekend, :boolean
    add_column :calendars, :holiday, :boolean
  end
end
