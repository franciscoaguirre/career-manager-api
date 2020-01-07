json.exam_instances @exam_instances.each do |exam_instance|
  json.id exam_instance.id
  json.date exam_instance.date
  json.status exam_instance.status
  json.exam do
    json.id exam_instance.exam.id
    json.expiration_date exam_instance.exam.expiration_date
    json.attempts exam_instance.exam.attempts
    json.course do
      json.id exam_instance.exam.user_course.id
      json.status exam_instance.exam.user_course.status
      json.name exam_instance.exam.user_course.course.name
    end
  end
end
