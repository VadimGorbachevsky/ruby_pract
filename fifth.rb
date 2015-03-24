  def FirstStNotTrash(input_file, trash_identity_string)
    @string = input_file.gets
    @string = input_file.gets while @string.include?(trash_identity_string)
    return @string
  end

  def EncodingIP(ip)
    @bufferIP = ''
    @bufferIP += ip
    @arrIP = []
    @arrIP << @bufferIP.to_i
    @bufferIP[0...@arrIP[-1].to_s.size+1] = ''
    @arrIP << @bufferIP.to_i
    @bufferIP[0...@arrIP[-1].to_s.size+1] = ''
    @arrIP << @bufferIP.to_i
    @bufferIP[0...@arrIP[-1].to_s.size+1] = ''
    @arrIP << @bufferIP.to_i
    @bufferIP[0...@arrIP[-1].to_s.size+1] = ''
    return (@arrIP[3] + @arrIP[2]*256 + @arrIP[1]*65536 + @arrIP[0]*16777216)
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
    if ip.to_i>array[0] and ip.to_i<array[1]
      puts("This ip using in " + array[6].chomp + " group.")
      return true
    else
      return false
    end
  end



@IP = ARGV[0].to_s
@EncodedIP = EncodingIP(@IP)
@IPArchive = File.new("IpToCountry.csv", "r");
@string = FirstStNotTrash(@IPArchive, "#")
while ( @string != nil && !CompareIP(@EncodedIP, decoding_string(@string) ) )
  @string = @IPArchive.gets
end