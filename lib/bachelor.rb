def get_first_name_of_season_winner(data, season)
  names = []
  data.each do |i_season, info|
    info.each do |ladies|
      if ladies["status"] == "Winner" && i_season == season
        names.push(ladies["name"].split)
      end
    end
  end
  names.flatten[0]# code here
end

def get_contestant_name(data, occupation)
  data.each do|i_season, info|
      info.each do |ladies|
        if ladies["occupation"] == occupation
            return ladies["name"]
        end
      end
  end# code here
end

def count_contestants_by_hometown(data, hometown)
  i = 0
  data.each do |i_season, info|
    info.each do |ladies|
      if ladies["hometown"] == hometown
        i += 1
      end
    end
  end
  i# code here
end

def get_occupation(data, hometown)
  data.each do |i_season, info|
    info.each do |ladies|
      if ladies["hometown"] == hometown
        return ladies["occupation"]
        break
      end
    end
  end# code here
end

def get_average_age_for_season(data, season)
  i = 0
  age = 0
  data.each do |i_season, info|
    info.each do |ladies|
      if season == i_season
        age = ladies["age"].to_f + age
        i += 1
      end
    end
  end
  average = age / i
  average.round
   # code here
end
