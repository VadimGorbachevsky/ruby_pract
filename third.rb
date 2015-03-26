input_array = %w(Banner1 Banner2 Banner3 Banner4 Banner5 Banner6 Banner7 Banner8 Banner9)

class BannerArray < Array
  
  def initialize(*content)
    @already_out = []
    content == [] ? self[0] = "Here may be your banner" : self[0] = content
    self.flatten!
  end

  def stack_count_control
    @already_out.replace([]) if @already_out.size == self.size
  end
  
  def out_and_take_stock
    puts(self[@selected])
    @already_out << self[@selected]
  end
  
  def uniq_reroll_output
    srand
    @selected = rand(self.count)
    @selected = rand(self.count) while @already_out.include?(self[@selected])
    out_and_take_stock
  end
  
  def out_uniq_banner
    stack_count_control
    uniq_reroll_output
  end
end
#class BannerArray
#  
#  def initialize(*content)
#    @already_out = []
#    @banners = []
#    content == [] ? @banners[0] = "Here may be your banner" : @banners[0] = content
#    @banners.flatten!
#  end
#
#  def stack_count_control
#    @already_out.replace([]) if @already_out.size == @banners.size
#  end
#  
#  def out_and_take_stock
#    puts(@banners[@selected])
#    @already_out << @banners[@selected]
#  end
#  
#  def uniq_reroll_output
#    srand
#    @selected = rand(@banners.count)
#    @selected = rand(@banners.count) while @already_out.include?(@banners[@selected])
#    out_and_take_stock
#  end
#  
#  def out_uniq_banner
#    stack_count_control
#    uniq_reroll_output
#  end
#end


banner_array1 = BannerArray.new(input_array)
10.times { banner_array1.out_uniq_banner }
#Now we can create many banners collections whith own uniq counters,
banner_array2 = BannerArray.new(%w(NEWBan NEWBan2 NEWBan3))
puts 
10.times do
  banner_array2.out_uniq_banner
  banner_array1.out_uniq_banner
end
puts
#"new()" without args
banner_array3 = BannerArray.new()
2.times { banner_array3.out_uniq_banner }
#examples:
#banner_array4 = BannerArray.new([nil, "Hello!"])
#banner_array4.compact!
#banner_array4.each{|e| puts e}
#banner_array4 << "ololo"
#puts banner_array4
