json.semester do
  json.id @semester.id
  json.year @semester.year
  json.is_even @semester.is_even
  json.credits @semester.credits
  json.total_credits @semester.total_credits
end
