user = User.create(
    email: "testuser@mail.com",
    password: "someweirdsecretpassword"
)

institute = Institute.create(name: "IMERL")
course = Course.create(
    name: "Calculo 1",
    credits: 12,
    institute_id: institute.id
)

semester = user.semesters.create(year: 2020, is_even: true)
semester.user_courses.create(
    course_id: course.id,
    status: :passed,
    user_id: user.id
)
