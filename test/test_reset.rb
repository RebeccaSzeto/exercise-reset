gem 'minitest'
require "minitest/autorun"
require "./lib/reset"

class TestReset < Minitest::Test
  def setup
   @a = [9, 8, 7]
   @b = [1, 7, 3]
   @c = [1, 2]
   @d = [1, 2, 3]
   @x = Reset.new
  end

  def test_union
   assert_equal [9, 8, 7, 1, 3], @x.union(@a, @b)
  end

  def test_intersection
   assert_equal [7], @x.intersection(@a, @b)
  end

  def test_difference
   assert_equal [9, 8], @x.difference(@a, @b)
  end

  def test_subset
   assert_equal true, @x.subset(@c, @d)
  end
end
