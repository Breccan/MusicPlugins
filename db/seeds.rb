[["Ableton Project", "Project folders and .als files for Ableton Live"]].each do |category|
  Category.create(:name => category[0], :description => category[1])
end
