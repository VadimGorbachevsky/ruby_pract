def dots_into_circle(input_array, circle_center, radius)
  included_dots = []
  input_array.each do |e|
    left_part = (e[0] + circle_center[0])**2 + (e[1] + circle_center[1])**2
    included_dots << e if ( left_part<=(radius**2))
  end
  return included_dots
end

n = [[1,2],[2,3],[15,2],[7,0],[-4.5,4.5],[3.4,2.3],[1,1],[0,0]]
center = [0,0]
r = 5
included_dots = dots_into_circle(n, center, r)
puts(included_dots.to_s)

