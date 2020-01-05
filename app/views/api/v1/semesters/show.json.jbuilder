json.semester do
  json.id @semester.id
  json.year @semester.year
  json.parity @semester.parity
  json.credits @semester.credits
  json.total_credits @semester.total_credits
end
