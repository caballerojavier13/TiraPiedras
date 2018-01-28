class StaticPageController < SecurityController
  def home

    @round = Round.find_by_player_id_and_active(current_player.id, true)

  end
end
