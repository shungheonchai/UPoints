json.extract! report, :id, :user_id, :reporting_user_id, :reason, :created_at, :updated_at
json.url report_url(report, format: :json)
