# Ruby經典面試題目 Q4. 解釋實體方法與類別方法 
# Explain instance method and class method.
# 當接收者不是物件object，而是類別class本身，就是一個類別方法class method

class IronmanList
  #<< : push method, 用在class method, 是指將self方法push到類別class裡
  class << self
    def find(id)
      puts "Push Method - Finding Ironman ID: #{id}"
    end
  end
end

IronmanList.find(5201314)
#=> Self Method - Finding Ironman ID: 5201314