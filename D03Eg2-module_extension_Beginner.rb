# Ruby經典面試題目 Q3. 包含與延伸有什麼不同?  
# What's the Difference Between "Include" and "Extend"?
# class直接extend Module內的method，此為類別方法

module Library
  def ithelp
    puts "IThelp helps me!"
  end
end

class Newbie
  include Library
end

class Beginner
  extend Library
end  

Newbie.new.ithelp
#=> IThelp helps me!

Beginner.ithelp
#=> IThelp helps me!