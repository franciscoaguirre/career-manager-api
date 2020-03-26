json.career do
  json.id @career.id
  json.name @career.name
  json.plan @career.plan
  json.expected_length @career.expected_length
  json.required_credits @career.required_credits
  json.bedelias_page @career.bedelias_page
  json.courses @career.courses.each do |course|
    json.id course.id
    json.name course.name
    json.credits course.credits
    json.institute course.institute do |institute|
      json.id institute.id
      json.name institute.name
    end
  end
  json.area_credits @career.area_credits.each do |area_credit|
    json.area area_credit.area do |area|
      json.id area.id
      json.name area.name
    end
    json.minimum_credits area_credit.minimum_credits
  end
end
