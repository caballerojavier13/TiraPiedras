class SecurityController < ApplicationController

  before_filter :require_player

  before_action :authenticate_player!

  def require_player
    unless player_signed_in?
      redirect_to new_player_session_path
    end
  end

end
