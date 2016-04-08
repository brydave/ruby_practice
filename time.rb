# birth = Time.mktime(1984, 2, 25, 10)

# age = birth + 1000000000000

# puts age.to_s


# Happy Birthday! Ask what year a person was born in, then the month, then the day. Figure out how old they are and give them a big SPANK! for each birthday they have had.

def howOld  
  
  englishMonth = ['january', 'february', 'march', 'april', 'may', 'june', 'july', 'august', 'september', 'october', 'november', 'december']

  require 'date'
  now = Date.today
  oldestPerson = now - (365 * 120)
  
  until (year > oldestPerson) && (year < now)
    puts "What year were you born?"
    if year < oldestPerson
      puts "C'mon, you're not that old!"
    elsif year > now
      puts "C'mon, you weren't born yesterday!"
    else
      year = gets
    end
  end

  puts "What month were you born?"
  month = 0

  while month == 0
    month = gets.chomp

    if englishMonth.include?(month)
      month = englishMonth.index(month) + 1
      puts "english month"
      break

    elsif (month.to_i < 13) && (month.to_i > 0)
      puts "numbered month"
      break

    else
      puts "I don't think that's a month... Try again!"
      month = 0
    end

  end
        

  
    



  # puts "What day?"
  # day = gets

  # birth = Time.mktime(year, month, day)
  # date  = Time.new
  # age   = date - birth

  # bdays = age / (525600 * 60)
  # sbday = bdays.floor
  # puts "Well, you get #{sbday.to_s} punches!"
  
end

puts howOld


