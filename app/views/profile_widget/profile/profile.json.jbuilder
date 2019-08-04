json.name do
  json.first_name @profile.name.first
  json.last_name @profile.name.last
  json.full @profile.name.full
  json.initials @profile.name.initials
  json.familiar @profile.name.familiar
  json.abbreviated @profile.name.abbreviated
  json.sorted @profile.name.sorted
  json.mentionable @profile.name.mentionable
  json.possessiv @profile.name.possessive
end