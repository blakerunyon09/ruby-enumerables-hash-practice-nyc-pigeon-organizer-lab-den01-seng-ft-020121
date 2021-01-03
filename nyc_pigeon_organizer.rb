def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.map { |top_category, sub_category|
    sub_category.map { |sub_category, names|
      names.each { |name|
        if pigeon_list[name] === nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][top_category] == nil
          pigeon_list[name][top_category] == []
        end
        pigeon_list[name][top_category].push(sub_category.to_s)
      }
    }
  }
  p pigeon_list
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

nyc_pigeon_organizer(pigeon_data)
