#require 'pry'
 def get_first_name_of_season_winner(data, season)
  # code here
  winner=""
  data[season].each do |contestants|
    if contestants["status"] == "Winner"
      winner = contestants["name"]
    end
  end
  winner.split.first
end



def get_contestant_name(data, occupation)
  # code here
  answer=""
  data.values.each do |contestants|
      contestants.each do |contestant|
        if contestant["occupation"] == occupation
        answer = contestant["name"]
        end
      end
    end
  answer
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter=0
  data.values.each do |contestants|
      contestants.each do |contestant|
        if contestant["hometown"] == hometown
        counter += 1
        end
      end
    end
  counter
end

def get_occupation(data, hometown)
  # code here
  occupation=""
  data.values.each do |contestants|
      contestants.each do |contestant|
        if occupation != "" then break end
          if  contestant["hometown"] == hometown
            occupation = contestant["occupation"]
          end
      end
    end
  occupation
end

def get_average_age_for_season(data, season)
  # code here
  counter= 0
  age = 0
  data[season].each do |contestants|
    age +=  contestants["age"].to_i
    counter += 1
  end
  (age / counter.to_f).round
end
