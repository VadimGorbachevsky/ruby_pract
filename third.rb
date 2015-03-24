class Array
  def OutUniqBanner()
    
      def StackCountControl()
        $AlreadyOut.replace([]) if $AlreadyOut.size == @banner_array.size
      end
  
      def UniqRerollOutput()
  
          def OutAndTakeStock()
            puts(@banner_array[@selected])
            $AlreadyOut << @banner_array[@selected]
          end
          
        #body
        srand
        @selected = rand(@banner_array.count)
        @selected = rand(@banner_array.count) while $AlreadyOut.include?(@banner_array[@selected])
        OutAndTakeStock()
      end
  
    #body      
    @banner_array = self #to avoid method arguments
    StackCountControl()
    UniqRerollOutput()  
  end
end

@BannerArray = ["Banner1", "Banner2", "Banner3", "Banner4", "Banner5", "Banner6", "Banner7", "Banner8", "Banner9"]
$AlreadyOut =[] #ересь, убрать!!!
                #1.Извлечение через параметр - это еще хуже.
                #2.Писать этот массив в последний элемент? Долго.
#Допустима глоб. переменная - в случае многих BannerArray и если она хэш-массив
18.times { @BannerArray.OutUniqBanner() }