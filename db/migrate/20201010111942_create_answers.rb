class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.text :body
      t.integer :question_id
      t.boolean :correct

      t.timestamps
    end
  end
end
