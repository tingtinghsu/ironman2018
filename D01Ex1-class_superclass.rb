# Ruby經典面試題目 Q1. 什麼是類別？What is a Class?
# 物件導向程式語言利用「可重複性」的概念，例如繼承(inheritance)來使軟體功能更易於維護。

class World
end

#Country繼承World
class Country < World 
end

tw = Country.new

#Ruby的世界觀: 萬物為Obect
puts tw.class                       #=> Country; tw的類別是Country
puts tw.class.superclass            #=> World; tw的父類別是World
puts tw.class.superclass.superclass #=> Object; World的父類別是Object

#到了Object頂樓,繼續用class往下推
puts tw.class.superclass.class            #=> Class; World的類別是Class
puts tw.class.superclass.class.superclass #=> Module; Class的父類別是Module

#判斷Module的class與superclass
puts tw.class.superclass.class.superclass.class #=>Class; #Module的類別是Class
puts tw.class.superclass.class.superclass.superclass #=>Object; #Module的父類別是Object
