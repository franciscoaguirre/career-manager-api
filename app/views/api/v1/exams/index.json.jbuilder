json.exams @exams do |exam|
  json.id exam.id
  json.status exam.status
  json.expiration_date exam.expiration_date
  json.attempts exam.attempts
  json.course do
    json.user_course_id exam.user_course.id
    json.course_id exam.user_course.course.id
    json.name exam.user_course.course.name
  end
end
