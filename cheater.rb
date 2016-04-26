# Only thing that might be missing is a way to set which side of a die is showing...
# Make sure that someone can't set the die to have a  7 showing

class Die

  def initialize
    # I'll just roll the die, though we
    # could do something else if we wanted
    # to, like setting the die with 6 showing.
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

  def weighted chosen
    @numberShowing = chosen
  end

end

puts Die.new.weighted 5