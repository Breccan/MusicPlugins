[["Ableton Project", "Project folders and .als files for Ableton Live"], ["Max Patches", "Patches for Max/MSP"]].each do |category|
  c = Category.find_or_create_by_name(category[0])
  c.description = category[1]
  c.save
end
