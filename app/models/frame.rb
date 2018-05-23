class Frame
  attr_accessor :first_roll
  attr_accessor :last_roll
  attr_accessor :type
  TYPE_STRIKE = "STRIKE"
  TYPE_SPARE = "SPARE"

  def initialize
    @first_roll = 0
    @last_roll = 0
  end

  def strike?
    type == TYPE_STRIKE
  end

  def spare?
    type == TYPE_SPARE
  end

  def score
    if strike? || spare?
      last_roll
    else
      first_roll + last_roll
    end
  end
end
