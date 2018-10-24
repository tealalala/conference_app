json.array! @speakers do |speaker|
  json.id speaker.id
  json.first_name speaker.first_name
  json.last_name speaker.last_name
  json.email speaker.email
  json.age speaker.age
  json.gender speaker.gender
end
