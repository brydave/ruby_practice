# birth = Time.mktime(1984, 2, 25, 10)

# age = birth + 1000000000000

# puts age.to_s


# Happy Birthday! Ask what year a person was born in, then the month, then the day. Figure out how old they are and give them a big SPANK! for each birthday they have had.

def howOld  
  
  englishMonth = ['january', 'february', 'march', 'april', 'may', 'june', 'july', 'august', 'september', 'october', 'november', 'december']

  require 'date'
  now = Date.today.year
  oldestPerson = now - 120

  puts "What year were you born?"
  year = 0

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

  birth = Time.mktime(year, month, day)
  puts birth

  date  = Time.new
  age   = date - birth

  bdays = age / (525600 * 60)
  sbday = bdays.floor
  puts "Well, you get #{sbday.to_s} punches!"
  
end

puts howOld


