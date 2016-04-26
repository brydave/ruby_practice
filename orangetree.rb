# Make an OrangeTree class. It should have a height method which returns its height, and a  oneYearPasses method, which, when called, ages the tree one year. Each year the tree grows taller (however much you think an orange tree should grow in a year), and after some number of years (again, your call) the tree should die. For the first few years, it should not produce fruit, but after a while it should, and I guess that older trees produce more each year than younger trees... whatever you think makes most sense. And, of course, you should be able to countTheOranges (which returns the number of oranges on the tree), and pickAnOrange (which reduces the @orangeCount by one and returns a string telling you how delicious the orange was, or else it just tells you that there are no more oranges to pick this year). Make sure that any oranges you don't pick one year fall off before the next year.

#private
# define tree
class Tree

  def initialize
    @treeAge  = 1
    @height   = 5
    @oranges  = 0

    puts "Your tree is #{@treeAge} years old and #{@height}' high."
  end

  def grow
    oneYearPasses
    puts "Your tree grew!"
  end

  def getHeight
    puts "Your tree is now #{@treeAge} years old and #{@height}' high."
  end

  private

  def orangey?
    @oranges >= 1
  end
  
  def oneYearPasses
    @treeAge = (@treeAge + 1)
    @height = @treeAge * 2

    if @treeAge > 5
      @oranges = @treeAge
    end

    if orangey?
      puts "Your tree grew some fruit! It now has #{@oranges} oranges. Do you want to pick some?"
      pickyAnswer = gets.chomp

      if pickyAnswer.downcase == "yes"
        puts "You've picked a fruit, and it's delicous!"
        @oranges = @oranges - 1
        puts "You now have #{@oranges}."
      end
    end

    if @treeAge >= 100
      puts "Your tree has lived a long and full life, but it has died. Time to chop it down for firewood."
      exit
    end
  end

end


# puts "Your tree grew some fruit! It now has #{@oranges}. Do you want to pick some?"
#       answer = gets.chomp
#     if answer.downcase == "yes"
#       puts "You've picked a fruit, and it's delicous!"
#       @oranges = @oranges - 1
#     end

# produce fruit - 5 fruit each year and +1*n fruit for each year of life over 30 n= year over 30

#external
# count oranges

# pick oranges with string aying delicous

plant = Tree.new

plant.grow
plant.getHeight

