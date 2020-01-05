json.courses @courses.each do |course|
  json.id course.id
  json.name course.name
  json.credits course.credits
  json.institute do
    json.id course.institute.id
    json.name course.institute.name
  end
end
