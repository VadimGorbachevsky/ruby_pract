def DotsIntoCircle(input_array, circle_center, radius)
  @IncludedDots = []
  input_array.each{|e| ( ((e[0]+circle_center[0])**2+(e[1]+circle_center[1])**2)<=(radius**2)) ? @IncludedDots << e : ''}
  return @IncludedDots
end

@N1 = [[1,2],[2,3],[15,2],[7,0],[-4.5,4.5],[3.4,2.3],[1,1],[0,0]]
@center = [0,0]
@R = 5
@IncludedDots = DotsIntoCircle(@N1, @center, @R)
puts(@IncludedDots.to_s)

