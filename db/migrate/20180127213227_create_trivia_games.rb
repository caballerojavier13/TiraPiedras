class CreateTriviaGames < ActiveRecord::Migration
  def change
    create_table :trivia_games do |t|
      t.string :title
      t.string :punishment
      t.timestamps null: false
    end
  end
end
