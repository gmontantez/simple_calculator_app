require "minitest/autorun"
require_relative "multiplication_function.rb"

class Addition_test < Minitest::Test
	def test_true_equals_true
		assert_equal(true,true)
	end
	def test_10_times_5_equals_50
		assert_equal(50,product(10,5))
	end
	def test_2_times_5_times_6_equals_60
		assert_equal(60,product(2,5,6))
	end
	def test_3_times_2_times_7_equals_42
		assert_equal(42,product(3,2,7))
	end
end