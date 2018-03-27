require "minitest/autorun"
require_relative "addition_function.rb"

class Addition_test < Minitest::Test
	def test_true_equals_true
		assert_equal(true,true)
	end
	def test_2_plus_5_equals_7
		assert_equal(7,sum(2,5))
	end
	def test_10_plus_60_equals_70
		assert_equal(70,sum(10,60))
	end
	def test_256_plus_345_equals_601
		assert_equal(601,sum(256,345))
	end

end