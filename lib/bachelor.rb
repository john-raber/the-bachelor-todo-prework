require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = ''

  data.each do |number, contestants|

    if number == season
      contestants.each_with_index do |person, index|

        person.each do |item, info|
          if info == "Winner"
            winner = data[number][index]['name'].split.first
          else
            next
          end
        end
      end
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  name = ''

  data.each do |number, contestants|

    contestants.each_with_index do |person, index|

      person.each do |item, info|
        if info == occupation
          name = data[number][index]['name']
        else
          next
        end
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  count = 0

  data.each do |number, contestants|

    contestants.each do |person|

      person.each do |item, info|
        if info == hometown
          count += 1
        else
          next
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |number, contestants|

    contestants.each_with_index do |person, index|

      person.each do |item, info|
        if info == hometown
          return data[number][index]['occupation']
        else
          next
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = 0
  count = 0

  data.each do |number, contestants|

    if number == season
      contestants.each_with_index do |person, index|

        person.each do |item, info|
          ages += data[number][index]['age'].to_f
          count += 1
        end
      end
    end
  end
  (ages / count).round
end
