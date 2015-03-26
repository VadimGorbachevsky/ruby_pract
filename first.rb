def array_uniq_hash(*arrays)
  full_array = []
  arrays.each{ |item| full_array += item }
  full_array.flatten!
  full_array.compact!
  uniq_count_list = Hash.new(0)
  full_array.each{ |e| uniq_count_list[e] += 1}
  return uniq_count_list
end

a = [[4, 19, 21, [nil, 0, 16]], nil, [32, 41, 234], 65]
b = [234, 0, [21, 16, 33, [18, 2]], 21, nil, [54]]
c = [234, 0, [21, nil, 0, [9, 2]], 21, nil]
d = [2, 2, [15, "крокозябра", 33, [18, 2]], [16]]

a_and_b_uniq_hash = array_uniq_hash(a, b, c, d)
puts(a_and_b_uniq_hash)