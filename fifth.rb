$stdout = File.open('logfile.log', 'w')

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
end

def compare_ip_with_base?(curren_ip, base_ip)
  min_ip = base_ip[0].to_i
  max_ip = base_ip[1].to_i
  if (min_ip..max_ip).include?(curren_ip)
    puts("IP " + curren_ip.to_s + " using in " + base_ip[6].chomp + " group.")
  else
    return false
  end
end

ip = ARGV[0].to_s
encoded_ip = encoding_ip(ip)
ip_archive = File.open("IpToCountry.csv", "r");
string = first_usefull_st(ip_archive, "#")
string = ip_archive.gets until ( string == nil \
                                  || compare_ip_with_base?(encoded_ip, decoding_string(string)) )
ip_archive.close
