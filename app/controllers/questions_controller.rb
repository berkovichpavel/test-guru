class QuestionsController < ApplicationController

  before_action :find_test, only: %i[index create new]
  before_action :find_question, only: %i[show destroy]


  def index
    @test = Test.find(params[:test_id])
    @questions = Question.where(test: @test)
  end

  def show; end

  def new; end

  def create
    question = @test.questions.create!(question_params)
    redirect_to question_path(question)
  end

  def destroy
    @question.destroy!
  end

  private

  def question_params
    params.permit(:body)
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def find_test
    @test = Test.find(params[:test_id])
  end

  def rescue_with_question_not_found
    render plain: "Question doesn't exist" 
  end

end
