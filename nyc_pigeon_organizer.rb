def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, specs|
    specs.each do |detail, names|
      names.each do |n|
        if !pigeon_list.keys.include?(n)
          pigeon_list[n] = {}
        end
        if !pigeon_list[n].keys.include?(attribute)
          pigeon_list[n][attribute] = []
        end
        pigeon_list[n][attribute] << detail.to_s
      end
    end
  end
  pigeon_list
end
