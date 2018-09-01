json.array! @localities do |locality|
  json.(locality, :codlocality, :name, :description)
end