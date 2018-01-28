json.extract! trivia_game_question, :id, :trivia_game, :question, :right, :created_at, :updated_at
json.url trivia_game_question_url(trivia_game_question, format: :json)
