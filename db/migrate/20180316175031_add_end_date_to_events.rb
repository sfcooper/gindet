class AddEndDateToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :enddate, :date
    add_column :events, :endtime, :time
  end
end
