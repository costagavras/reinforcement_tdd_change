require 'minitest/autorun'
require 'minitest/pride'
require './changer.rb'

#The objective is to take a random integer and return an array of coin values that add up to that amount. If you give me 100 pennies I give you back 4 quarters: [25,25,25,25].
# If you give me 61 pennies I give you back 2 quarters, 1 dime, and 1 penny: [25, 25, 10, 1].

#Once you have all of the tests passing, go back and **refactor** your code to make it more concise and readable.

class TestChanger < MiniTest::Test

  def test_change_one_quarter
    assert_equal [25], Changer.make_change(25)
  end

  def test_change_multiple_quarters
    assert_equal [25, 25], Changer.make_change(50)
  end

  def test_change_one_dime
    assert_equal [10], Changer.make_change(10)
  end

  def test_change_mutiple_dimes
    assert_equal [10, 10], Changer.make_change(20)
  end

  def test_change_small_complex_amount
    assert_equal [5, 1, 1], Changer.make_change(7)
  end

  def test_change_large_complex_amount
    assert_equal [25, 25, 10, 5, 1, 1, 1], Changer.make_change(68)
  end
end
