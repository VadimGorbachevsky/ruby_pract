def first_usefull_st(input_file, trash_identity_string)
  string = input_file.gets
  string = input_file.gets while string.include?(trash_identity_string)
  return string
end

def encoding_ip(ip)
  encoded_ip = 0
  arr_ip = ip.split(".")
  arr_ip.reverse!
  mult = 1
  arr_ip.each{ |e| encoded_ip += e.to_i * mult; mult *= 256; }
  return encoded_ip
end

def decoding_string(string)
  string.delete!("\42")
  array = string.split(",")
  return array
end

def compare_ip(ip, array)
  min_ip = array[0].to_i
  max_ip = array[1].to_i
  if (min_ip..max_ip).include?(ip)
    puts("This ip using in " + array[6].chomp + " group.")
    return true
  else
    return false
  end
end

ip = ARGV[0].to_s
encoded_ip = encoding_ip(ip)
ip_archive = File.open("IpToCountry.csv", "r");
string = first_usefull_st(ip_archive, "#")
string = ip_archive.gets until ( string == nil \
                                  || compare_ip(encoded_ip, decoding_string(string)) )
ip_archive.close
