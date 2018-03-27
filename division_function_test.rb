require "minitest/autorun"
require_relative "division_function.rb"

class Addition_test < Minitest::Test
	def test_true_equals_true
		assert_equal(true,true)
	end
	def test_10_divide_5_equals_2
		assert_equal(2,quotient(10,5))
	end
	def test_42_divide_5_equals_8
		assert_equal(8,quotient(42,5))
	end
	def test_100_divide_3_equals_33
		assert_equal(33,quotient(100,3))
	end
end