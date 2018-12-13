# Ruby經典面試題目 Q1. 什麼是類別？What is a Class? 
# 類別(Class)能夠建立物件實體(Object instance)，接收資料(data)，並利用方法(method)和資料互動。

class TingisIronman
  # 定義實體變數instance variable
  def initialize
    @message = "I'm going to write 30 articles in 30 days."
  end

  # 定義方法,讓實體變數產生變化 .gsub method可取代字串
  def method
    puts @message.gsub("write", "publish") #定義方法：`.gsub`，可以取代字串
  end
end

  #.new 建立物件實體
  object = TingisIronman.new
  # 實體變數使用方法, 和資料互動
  object.method #=> I'm going to publish 30 articles in 30 days.
