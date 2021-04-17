class CreateScheduleHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :schedule_histories do |t|
      t.string :task_name
      t.datetime :start_at
      t.datetime :end_at
      
      t.timestamps
    end
  end
end
