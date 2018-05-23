require 'rails_helper'

RSpec.describe Game, type: :model do
  
it "get score from input" do
  game = Game.new "XXXXXXXXXXXX"
  score = game.get_score
  expect(score).to eq 300
end

end
