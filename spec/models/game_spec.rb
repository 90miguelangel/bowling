require 'rails_helper'

RSpec.describe Game, type: :model do
  
it "get 300 when all frames are strikes" do
  game = Game.new "XXXXXXXXXXXX"
  score = game.get_score
  expect(score).to eq 300
end

it "get 90 when are 10 pairs of 9 and miss" do
  game = Game.new "9-9-9-9-9-9-9-9-9-9-"
  score = game.get_score
  expect(score).to eq 90
end

it "get 90 when are 10 pairs of 5 and spare, with a final 5" do
  game = Game.new "5/5/5/5/5/5/5/5/5/5/5"
  score = game.get_score
  expect(score).to eq 150
end

end
