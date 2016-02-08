course = Course.find_by_name("Esperanto")
skill = Skill.find_by(name: "Basics 3", course_id: course.id)

lesson = Lesson.create!(
  name: "Lesson 2",
  skill_id: skill.id
)

  mcq1 = Exercise.create!(
    lesson_id: lesson.id,
    thing_to_translate: "The waters",
    exercise_type: "multiple_choice"
  )

  choice_1_1 = AnswerChoice.create!(
    body: "Las aguas",
    exercise_id: mcq1.id,
    is_correct: true

  )
  choice_1_3 = AnswerChoice.create!(
    body: "Los aguas",
    exercise_id: mcq1.id
  )
  choice_1_4 = AnswerChoice.create!(
    body: "Las vacas",
    exercise_id: mcq1.id
  )


  mcq2 = Exercise.create!(
    lesson_id: lesson.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "The cows"
  )
  choice_2_1 = AnswerChoice.create!(
    body: "Las vacas",
    exercise_id: mcq2.id,
    is_correct: true,
  )
  choice_2_2 = AnswerChoice.create!(
    body: "Los gallos",
    exercise_id: mcq2.id
  )
  choice_2_3 = AnswerChoice.create!(
    body: "Los tenedores",
    exercise_id: mcq2.id
  )


  mcq3 = Exercise.create!(
    lesson_id: lesson.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "The forks"
  )
  choice_3_1 = AnswerChoice.create!(
    body: "Los tenedores",
    is_correct: true,
    exercise_id: mcq3.id,
  )
  choice_3_2 = AnswerChoice.create!(
    body: "Los gemelos",
    exercise_id: mcq3.id
  )

  choice_3_4 = AnswerChoice.create!(
    body: "Las cucharas",
    exercise_id: mcq3.id
  )


  mcq4 = Exercise.create!(
    lesson_id: lesson.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "Las aves"
  )
  choice_4_2 = AnswerChoice.create!(
    body: "The birds",
    is_correct: true,
    exercise_id: mcq4.id
  )
  choice_4_3 = AnswerChoice.create!(
    body: "The hens",
    exercise_id: mcq4.id
  )
  choice_4_4 = AnswerChoice.create!(
    body: "The roosters",
    exercise_id: mcq4.id
  )

  mcq5 = Exercise.create!(
    lesson_id: lesson.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "El ave"
  )

  choice_5_1 = AnswerChoice.create!(
    body: "The bird",
    exercise_id: mcq5.id,
    is_correct: true,
  )

  choice_5_3 = AnswerChoice.create!(
    body: "The question",
    exercise_id: mcq5.id
  )
  choice_5_4 = AnswerChoice.create!(
    body: "The man",
    exercise_id: mcq5.id
  )

  mcq6 = Exercise.create!(
    lesson_id: lesson.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "The table"
  )

  choice_6_1 = AnswerChoice.create!(
    body: "La mesa",
    is_correct: true,
    exercise_id: mcq6.id,
  )
  choice_6_3 = AnswerChoice.create!(
    body: "Las mesas",
    exercise_id: mcq6.id
  )
  choice_6_4 = AnswerChoice.create!(
    body: "El mesa",
    exercise_id: mcq6.id
  )

  mcq7 = Exercise.create!(
    lesson_id: lesson.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "La propiedad"
  )

  choice_7_1 = AnswerChoice.create!(
    body: "The property",
    is_correct: true,
    exercise_id: mcq7.id,
  )
  choice_7_2 = AnswerChoice.create!(
    body: "The identity",
    exercise_id: mcq7.id
  )
  choice_7_3 = AnswerChoice.create!(
    body: "The bears",
    exercise_id: mcq7.id
  )


  mcq8 = Exercise.create!(
    lesson_id: lesson.id,
    exercise_type: "multiple_choice",
    thing_to_translate: "La identidad"
  )

  choice_8_1 = AnswerChoice.create!(
    body: "The identity",
    is_correct: true,
    exercise_id: mcq8.id,
  )
  choice_8_3 = AnswerChoice.create!(
    body: "The truth",
    exercise_id: mcq8.id
  )
  choice_8_4 = AnswerChoice.create!(
    body: "The bags",
    exercise_id: mcq8.id
  )