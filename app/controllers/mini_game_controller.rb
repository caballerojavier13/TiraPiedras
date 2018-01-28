class MiniGameController < SecurityController
  def PlayTrivia

    @round = Round.find_by_player_id_and_active(current_player.id, true)

    unless @round
      redirect_to root_path
    end

    @trivia = TriviaGame.all.limit(1).order('RANDOM()').first!

    if params[:punishment]
      @punishment = Punishment.where(trivia: true).limit(1).order('RANDOM()').first!
    end
    @questions = TriviaGameQuestion.where(trivia_game_id: @trivia.id)

  end

  def PlayDices

    @round = Round.find_by_player_id_and_active(current_player.id, true)

    unless @round
      redirect_to root_path
    end

    if params[:punishment]
      @punishment = Punishment.where(dices: true).limit(1).order('RANDOM()').first!
    else
      @dice = Random.new.rand(2..4).to_s
    end
  end

end
