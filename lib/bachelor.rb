data = {
  "season 30": [
    {
      "name":      "Beth Smalls",
      "age":       "26",
      "hometown":  "Great Falls, Virginia",
      "occupation":"Nanny/Freelance Journalist",
      "status":    "Winner"
    },
    {
      "name":       "Becca Tilley",
      "age":        "27",
      "hometown":   "Shreveport, Louisiana",
      "occupation": "Chiropractic Assistant",
      "status":     "Eliminated Week 8"
    }
  ],
  "season 29": [
    {
      "name":      "Ashley Yeats",
      "age":       "24",
      "hometown":  "Denver, Colorado",
      "occupation":"Dental Assitant",
      "status":    "Not the Winner"
    },
    {
      "name":       "Sam Grover",
      "age":        "29",
      "hometown":   "New York, New York",
      "occupation": "Entertainer",
      "status":     "Winner"
    }
  ],

}

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |stat|
    if stat["status"].downcase == "winner"
      return stat["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, person|
    person.each do |stat|
      if stat["occupation"].downcase == occupation.downcase
        return stat["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, person|
    person.each do |stat|
      if stat["hometown"].downcase == hometown.downcase
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, person|
    person.each do |stat|
      if stat["hometown"] == hometown
        return stat["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ppl = 0
  avg_age = 0
  data[season].each do |stat|
    avg_age += stat["age"].to_f
    ppl += 1
  end
  return (avg_age / ppl).round
end

# get_average_age_for_season(data, "season 29")
