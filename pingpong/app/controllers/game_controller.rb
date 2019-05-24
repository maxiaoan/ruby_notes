class GameController < ApplicationController
  def ping
	redirect_to game_pong_path 
	flash[:notice] = "Ping-Pong!"
  end

  def pong
  end
end
