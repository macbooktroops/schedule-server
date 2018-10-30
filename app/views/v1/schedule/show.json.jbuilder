json.extract! @schedule, :id, :title, :state
json.start_time @schedule.start_time.strftime('%Y-%m-%d %H:%M:%S')
json.latitude @schedule.latitude
json.longitude @schedule.longitude
json.user (@schedule.schedule_users) do |schedule_user|
  unless schedule_user.user.nil?
    json.id schedule_user.user.id
    json.name schedule_user.user.name
    json.email schedule_user.user.email
    json.arrive schedule_user.arrive
    json.arrive_at schedule_user.arrive_at.start_time.strftime('%Y-%m-%d %H:%M:%S') unless schedule_user.arrive_at.nil?
  end
end