class AddQuestionsParamsNullConstraints < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:questions, :body, false)
    change_column_null(:questions, :test_id, false)
  end
end
