class World
end

#inherence
class Country < World 
end

tw = Country.new

puts tw.class                       #=> Country
puts tw.class.superclass            #=> World
puts tw.class.superclass.superclass #=> Class