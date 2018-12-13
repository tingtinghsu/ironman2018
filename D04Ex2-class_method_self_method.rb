# Ruby經典面試題目 Q4. 解釋實體方法與類別方法 
# Explain instance method and class method.
# 當接收者不是物件object，而是類別class本身，就是一個類別方法class method

class IronmanList
  #直接使用self這個class method，讓 self.find(id)與D04Ex1.rb呈現出一樣的結果
  #class << self
  def self.find(id)
      puts "Self Method - Finding Ironman ID: #{id}"
  end
  #end
end

IronmanList.find(5201314)
#=> Push Method - Finding Ironman ID: 5201314