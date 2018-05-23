class GamesController < ApplicationController
  def new
  end

  def create
    game = Game.new game_params[:frames]
    @score = game.get_score

    respond_to do | format |
      format.html { render :create }
      format.json { render json: { score: @score } }
    end
  end

  private

  def game_params
    params.require(:game).permit(:frames)
  end
end
