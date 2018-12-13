# Ruby經典面試題目 Q2. 類別與模組有什麼不同? 
# What's the Difference Between a Class and a Module?
# 模組(module)理解為後天的知識，無法被繼承(inheritance)，可以被include

module Library
#網路就像是個大型圖書館模組（名稱要以常數、大字英文字母開頭，跟書名一樣）
  def ithelp #定義IT邦方法
    puts "I'm learning from others' articles on IT help Website!"
  end
end

class IThelpUser
  def initialize(name)
    @name = name #class可被實體化(instantiated)	
  end
  include Library
  #讓每個IT邦User都可以使用Library模組
end

Ting = IThelpUser.new("Ting") #new一個新人物Ting (OS: 大家好我是IT邦村民，請多指教！XD)
Ting.ithelp 
#=> I'm learning from others' articles on IT help Website!
You = IThelpUser.new("You")
You.ithelp 
#=> I'm learning from others' articles on IT help Website!
