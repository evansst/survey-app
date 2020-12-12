Response.destroy_all
ResponseOption.destroy_all
Question.destroy_all
Survey.destroy_all
User.destroy_all

survey1 = Survey.create(
  name: 'Survey1',
  due_date: Time.new(2021, 1, 30)
)

question1 = Question.create(
  survey_id: survey1.id,
  text: 'What is your gender?'
)

question1option1 = ResponseOption.create(
  question_id: question1.id,
  input_type: 'radio',
  text: 'Male'
)

question1option2 = ResponseOption.create(
  question_id: question1.id,
  input_type: 'radio',
  text: 'Female'
)

question1option3 = ResponseOption.create(
  question_id: question1.id,
  input_type: 'radio',
  text: 'Decline to answer'
)

question2 = Question.create(
  survey_id: survey1.id,
  text: 'How old are you?'
)

question2option1 = ResponseOption.create(
  question_id: question2.id,
  input_type: 'number'
)

question3 = Question.create(
  survey_id: survey1.id,
  text: 'What is your first name?'
)

question3option1 = ResponseOption.create(
  question_id: question3.id,
  input_type: 'text'
)

sam = User.create(
  first_name: 'Sam',
  last_name: 'Evans',
  email: 'evans.sam.t@gmail.com'
)

Response.create(
  survey_id: survey1.id,
  question_id: question1.id,
  user_id: sam.id,
  response_option_id: question1option1.id
)

Response.create(
  survey_id: survey1.id,
  question_id: question2.id,
  user_id: sam.id,
  response_option_id: question2option1.id,
  text: 30
)

Response.create(
  survey_id: survey1.id,
  question_id: question3.id,
  user_id: sam.id,
  response_option_id: question3option1.id,
  text: 'Sam'
)
