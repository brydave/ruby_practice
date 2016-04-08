# Happy Birthday! Ask what year a person was born in, then the month, then the day. Figure out how old they are and give them a big PUNCH! One for each birthday they have had.

def howOld  
  # get a list of the months
  englishMonth = ['january', 'february', 'march', 'april', 'may', 'june', 'july', 'august', 'september', 'october', 'november', 'december']

  # use date for time keeping
  require 'date'
  now = Date.today.year
  oldestPerson = now - 120

  puts "What year were you born?"
  year = 0

  #loop through getting the year - wait for it to be correct
  while year == 0
    year = gets.chomp

    if (year.to_i > oldestPerson) && (year.to_i < now)
      break
    
    elsif year.to_i < oldestPerson
      puts "C'mon, you're not that old! Try again..."
      year = 0

    elsif year.to_i > now
      puts "I don't think time travel has been invented... yet... Or has it? Try again."
      year = 0

    elsif year.is_a? String
      year = 0
      puts "I don't think that's a year... Try again!"

    else
      year = 0
      puts "I don't think that's a year... Try again!"
    end
  end

  puts "What month were you born?"
  month = 0

  #loop through getting the month - wait for it to be correct
  while month == 0
    month = gets.downcase.chomp

    if englishMonth.include?(month)
      month = englishMonth.index(month) + 1
      break

    elsif (month.to_i < 13) && (month.to_i > 0)
      break

    else
      puts "I don't think that's a month... Try again!"
      month = 0
    end

  end

  puts "What day were you born?"
  day = 0

  #loop through getting the day - wait for it to be correct
  while day == 0
    day = gets.chomp

    if month.to_i == 2 && day.to_i > 29
      puts "February doesn't have that many days... Try again."      
      day = 0

    elsif (day.to_i < 31) && (day.to_i > 0)
      break

    else
      puts "I don't think that's right... Try again!"
      day = 0
    end
  end

  # Add birthday into time format
  birth = Time.mktime(year, month, day)
  puts birth

  # Calculate age
  date  = Time.new
  age   = date - birth

  # Calculate punches
  bdays = age / (525600 * 60)
  sbday = bdays.floor
  
  # Get punched
  puts "Well, you get #{sbday.to_s} punches!"
  
end

puts howOld


