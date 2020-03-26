json.careers @careers.each do |career|
  json.id career.id
  json.name career.name
  json.plan career.plan
  json.expected_length career.expected_length
  json.required_credits career.required_credits
  json.bedelias_page career.bedelias_page
end
