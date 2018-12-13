# Ruby經典面試題目 Q5. self是什麼意思？  
# What does 'self' mean in Ruby?

class LoveSong
  def initialize
    @lyrics = "I was born to love you!"
    #定義@lyrics實體變數（instance variable) 
  end
  def sing_a_song
    puts @lyrics
  end  
end

LoveSong.new.sing_a_song #=> I was born to love you!