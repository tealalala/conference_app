json.array! @meetings do |meeting|
  json.partial! 'meeting.json.jbuilder', meeting: meeting
end
r
