json.array! @businesses.each do |business|
  json.id business.id
  json.name business.name
  json.address business.address
  json.city business.city
  json.state business.state
  json.zip business.zip
  json.wifi business.wifi
  json.phone business.phone
  json.feedbacks business.feedbacks, :id, :comment, :coffee_score
end
