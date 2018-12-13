# Ruby經典面試題目 Q3. 包含與延伸有什麼不同?  
# What's the Difference Between "Include" and "Extend"?
# class使用include引入Module內的method時必須new一個物件實體, 此為實體方法

module Library
  def ithelp
    puts "IThelp helps me!"
  end
end

class Newbie
  include Library
end

Newbie.new.ithelp
#=> IThelp helps me!

#You = Newbie.new
#You.ithelp
#[Newbie.new].ithelp [中括號內的變數就是You!] 這就是我們為什麼不能漏掉.new的原因

Newbie.ithelp
#=> undefined method `ithelp' for Newbie:Class (NoMethodError)

#如果漏掉.new, Newbie類別並沒有ithlep方法，會出現NoMethodError