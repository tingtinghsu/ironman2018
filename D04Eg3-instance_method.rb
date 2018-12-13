# Ruby經典面試題目 Q4. 解釋實體方法與類別方法 
# Explain instance method and class method.

# instance method: 將實體方法運用在某個客製化的物件實體 (必須先new一個object instance);
# class method: 類別物件的方法，例如單例方法(singleton method); 
# 本例子中，IronmanList Class的self.find(id) Method就是類別方法. self在類別class裡，代表目前的類別。

class IronmanList
  def self.find(id)
      puts "Finding Ironman ID: #{id}"
  end
  
  def win
    puts "I've got a trophy!"
  end  
end

IronmanList.find(5201314)         #這是實體方法
IronmanList.new.win               #這是類別方法

#=> Finding Ironman ID: 5201314
#=> I've got a trophy!