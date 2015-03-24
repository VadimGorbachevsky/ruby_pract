def ArrayUniqHash(*arrays)
  @FullArray = []
  arrays.collect{ |item| @FullArray += item}
  @FullArray.flatten!
  @UniqCountList = Hash.new(0)
  @FullArray.each{|e| e!=nil ? @UniqCountList[e] += 1 : ''}
  return @UniqCountList
end

@a = [[4, 19, 21, [nil, 0, 16]], nil, [32, 41, 234], 65]
@b = [234, 0, [21, 16, 33, [18, 2]], 21, nil, [54]]
@c = [234, 0, [21, nil, 0, [9, 2]], 21, nil]
@d = [2, 2, [15, "крокозябра", 33, [18, 2]], [16]]
@AandBUniqHash = ArrayUniqHash(@a, @b, @c, @d)
puts(@AandBUniqHash)