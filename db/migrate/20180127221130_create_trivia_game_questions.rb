class CreateTriviaGameQuestions < ActiveRecord::Migration
  def change
    create_table :trivia_game_questions do |t|
      t.references :trivia_game, index: true
      t.string :question
      t.boolean :right
      t.timestamps null: false
    end
  end
end
