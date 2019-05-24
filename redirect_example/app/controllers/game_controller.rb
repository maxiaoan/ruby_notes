class GameController < ApplicationController
  def ping
	logger.info "+++ Example +++"
	redirect_to game_pong_path
	# redirect_to :action => "pong"
  end

  def pong
	
  end

end
