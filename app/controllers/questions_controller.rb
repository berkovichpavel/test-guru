class QuestionsController < ApplicationController
  class QuestionssController < ApplicationController

    before_action :find_test, only: %i[index create new]
    before_action :find_question, only: %i[show]


    def index
      @fish = 'fish'
      @test = Test.find(params[:test_id])
      @questions = Question.where(test: @test)
    end

    def show; end


    private

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
end
