def dots_into_circle(dots, center, radius)
  included_dots = []
  right_part = radius**2
  dots.each do |e|
    left_part = (e.first + center.first)**2 + (e[1] + center[1])**2
    (left_part > right_part) || included_dots << e
  end
  return included_dots
end

dots = [[1,2],[2,3],[15,2],[7,0],[-4.5,4.5],[3.4,2.3],[1,1],[0,0]]
center = [0,0]
r = 5
included_dots = dots_into_circle(dots, center, r)
puts(included_dots.to_s)

