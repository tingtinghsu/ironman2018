# Ruby經典面試題目 Q5. self是什麼意思？  
# What does 'self' mean in Ruby?

# self在類別class裡，代表目前的類別。
# self在實體instance裡，代表目前的實體。

#在Ruby，類別class上的'隱形類別'叫做特徵類別eigenclass
# 類別的eigenclass方法 = 類別方法。
# 實體的eigenclass方法 = 單例方法 = 單例類別的實體方法。


class RockSong
  class << self
    def song1()
      puts "We will rock you!"
    end  
  end

  def self.song2()
    puts "We are the champions!"
  end

  puts self       #=> RockSong; self代表目前的類別名稱
  puts self.class #=> Class; self.class還是class. 類別的類別, 還是類別. 
  

  p self.singleton_methods #=> [:song1, :song2]; RockSong的實體方法
  #RockSong的Singleton class(self)的instance method有song1和song2

  puts self.song1() #=> We will rock you!
  puts self.song2() #=> We are the champions!
end