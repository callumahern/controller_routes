class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.references :question
      t.string :answer_title
      t.boolean :correct_answer, default: false

      t.timestamps
    end
  end
end
