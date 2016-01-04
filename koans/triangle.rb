# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  a, b, c = [a, b, c].sort
  #puts a, b, c
  raise TriangleError, "Sides must be numbers greater than zero" if (a <= 0)
  raise TriangleError, "No two sides can add to be less than or equal to the other side" if (a+b <= c)

  return :equilateral if a == b && b == c
  return :isosceles if a == b || b == c || a == c
  return :scalene
end

# UGL questa è la mia implementazione prima di farmi influenzare dal link di stackoverflow
# si rompeva qui:
=begin
The answers you seek...
  Exception TriangleError expected, but nothing raised

Please meditate on the following code:
  /Users/loris/Documents/ruby/ruby_koans/koans/about_triangle_project_2.rb:12:in `test_illegal_triangles_throw_exceptions'
=end

def my_triangle(a, b, c)
  raise TriangleError if a <= 0 || b <= 0 || c <= 0

  return :equilateral if a == b && b == c
  return :isosceles if a == b || b == c || a == c
  return :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
