def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, specs|
    specs.each do |detail, names|
      names.each do |n|
        if !pigeon_list.keys.include?(n)
          pigeon_list[n] = {}
        end
        pigeon_list[n][attribute] << detail
      end
    end
  end
  pigeon_list
end
