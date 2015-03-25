input_array = ["Banner1", "Banner2", "Banner3", "Banner4", "Banner5", "Banner6", "Banner7", "Banner8", "Banner9"]

class Banner_array < Array
  def initialize(*content)
    @already_out = []
    self[0] = content
    self.flatten!
  end
    
  def out_uniq_banner
    def stack_count_control
      @already_out.replace([]) if @already_out.size == self.size
    end
      
    def uniq_reroll_output
      def out_and_take_stock
        puts(self[@selected])
        @already_out << self[@selected]
      end
        
      srand
      @selected = rand(self.count)
      @selected = rand(self.count) while @already_out.include?(self[@selected])
      out_and_take_stock
    end
      
    stack_count_control
    uniq_reroll_output
  end
end

banner_array1 = Banner_array.new(input_array)
10.times { banner_array1.out_uniq_banner }
#Now we can create many banners collections whith own uniq counters
banner_array2 = Banner_array.new('NewBanner1', 'New Banner2', 'NewBanner3')
5.times { banner_array2.out_uniq_banner }