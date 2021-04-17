json.extract! schedule_history, :id, :task_name, :start_at, :end_at, :created_at, :updated_at
json.url schedule_history_url(schedule_history, format: :json)
