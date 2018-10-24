json.array! @meetings do |meeting|
  json.id meeting.id
  json.title meeting.title
  json.agenda meeting.agenda
  json.time meeting.time
end
