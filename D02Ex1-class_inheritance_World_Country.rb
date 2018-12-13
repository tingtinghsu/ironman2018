# Ruby經典面試題目 Q2. 類別與模組有什麼不同? 
# What's the Difference Between a Class and a Module?
# 類別(class)具有繼承(inheritance)的能力，讓子類別直接繼承父類別的特性。

class World
  def beautiful(scenery)
    puts "#{scenery} is so beautiful!"
  end  
end  

class Country < World
end

tw = Country.new
jp = Country.new
au = Country.new

tw.beautiful "Taroko Gorge"
jp.beautiful "Fujisan"
au.beautiful "Great Barrier Reef"

#=> Taroko Gorge is so beautiful!
#=> Fujisan is so beautiful!
#=> Great Barrier Reef is so beautiful!