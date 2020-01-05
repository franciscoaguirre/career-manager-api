json.user_course do
  json.id @user_course.id
  json.course do
    json.id @user_course.course.id
    json.name @user_course.course.name
    json.credits @user_course.course.credits
    json.institute do
      json.id @user_course.course.institute.id
      json.name @user_course.course.institute.name
    end
  end
  json.semester do
    json.id @user_course.semester.id
    json.year @user_course.semester.year
    json.parity @user_course.semester.parity
    json.credits @user_course.semester.credits
    json.total_credits @user_course.semester.total_credits
  end
  json.status @user_course.status
end
