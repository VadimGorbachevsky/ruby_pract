  def FirstStNotTrash(input_file, trash_identity_string)
    @string = input_file.gets
    @string = input_file.gets while @string.include?(trash_identity_string)
    return @string
  end
  
  def decoding_string(string)
    
    @string = string.clone
    @string.delete!("\42")
    @array = []
   
    def DecodingNumber()
      @array << @string.to_i
      @string[0...@array[-1].to_s.size+1] = ''
    end

    def DecodingWord()
      @our_word = ['']
      while @string[0] != ","
        @our_word[0] += @string[0]
        @string[0] = ''
      end
      @string[0] = ''
      @array += @our_word
    end
    
    DecodingNumber()
    DecodingNumber()
    DecodingWord()
    DecodingNumber()
    DecodingWord()
    DecodingWord()
    @array << @string #last
    return @array
  end

  def CompareIP(ip, array)
    if ip>array[0] and ip<array[1]
      puts("This ip using in " + array[6].chomp + " group.")
      return true
    else
      return false
    end
  end



@IP = ARGV[0].to_i
@IPArchive = File.new("IpToCountry.csv", "r");
@string = FirstStNotTrash(@IPArchive, "#")
while ( @string != nil && !CompareIP(@IP, decoding_string(@string) ) )
  @string = @IPArchive.gets
end