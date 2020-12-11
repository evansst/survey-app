ResponseOption.destroy_all
Question.destroy_all
Survey.destroy_all
User.destroy_all

sam = User.create(
  first_name: 'Sam',
  last_name: 'Evans',
  email_address: 'evans.sam.t@gmail.com'
)

survey1 = Survey.create(
  name: 'Survey1',
  due_date: Time.new(2021, 1, 30)
)

question1 = Question.create(
  survey_id: survey1.id,
  text: 'What is your gender?'
)

ResponseOption.create(
  question_id: question1.id,
  input_type: 'radio',
  text: 'Male'
)
ResponseOption.create(
  question_id: question1.id,
  input_type: 'radio',
  text: 'Female'
)
ResponseOption.create(
  question_id: question1.id,
  input_type: 'radio',
  text: 'Decline to answer'
)

question2 = Question.create(
  survey_id: survey1.id,
  text: 'How old are you?'
)

ResponseOption.create(
  question_id: question2.id,
  input_type: 'number'
)

question3 = Question.create(
  survey_id: survey1.id,
  text: 'What is your first name?'
)

ResponseOption.create(
  question_id: question3.id,
  input_type: 'text'
)
