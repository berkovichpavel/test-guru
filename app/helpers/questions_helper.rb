module QuestionsHelper
  METHODS = { edit: 'Edit', new: 'New' }.freeze

  def question_form_header(test, method)
    "#{METHODS[method]} Question in test '#{test.title}'"
  end
end
