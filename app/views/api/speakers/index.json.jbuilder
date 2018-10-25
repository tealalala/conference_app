json.array! @speakers do |speaker|
  json.partial! "speakers.json.jbuilder", speaker: speaker
end
