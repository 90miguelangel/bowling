class GamesController < ApplicationController
  def new
  end

  def create
    frames = params[:game][:frames]
    game = Game.new frames
    @score = game.get_score

    respond_to do | format |
      format.html { render :create }
      format.json { render json: { score: @score } }
    end
  end
end
