class GamesController < ApplicationController
  def new
  end

  def create
    frames = params[:game][:frames]
    game = Game.new frames
    @score = game.get_score
  end
end