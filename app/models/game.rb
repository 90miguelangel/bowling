class Game
  attr_accessor :score

  def initialize(text)
    @input = text
    @frames = []
    process_input
  end

  def process_input
    i = 0
    while i < @input.length
      char = @input[i]
      next_char = @input[i+1]
      frame = Frame.new

      if char == "X"
        frame.first_roll = 10
        frame.last_roll = 10
        frame.type = Frame::TYPE_STRIKE
      else
        frame.first_roll = char.to_i if char != "-"
        frame.last_roll = next_char.to_i if char != "-"
        i+=1

        if next_char == "/"
          frame.last_roll = 10
          frame.type = Frame::TYPE_SPARE
        end
      end

      @frames << frame
      i+=1
    end

  end

  def get_score
    score = 0

    for i in(0..9)
      frame = @frames[i]
      next_frame = @frames[i+1]
      
      if frame.spare?

        score += frame.score
        if i+1 <= @frames.length
          score += next_frame.first_roll
        end

      elsif frame.strike?

        score += frame.score
        if i+1 <= @frames.length

          score += next_frame.first_roll

          if next_frame.strike?
            if i+2 <= @frames.length
              score += @frames[i+2].first_roll
            end
          else
            score += next_frame.last_roll
            if next_frame.spare?
              score = score - next_frame.first_roll
            end
          end
        end

      else 
        score = score + frame.score
      end
    end
    return score
  end
end
