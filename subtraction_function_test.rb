require "minitest/autorun"
require_relative "subtraction_function.rb"

class Addition_test < Minitest::Test
	def test_true_equals_true
		assert_equal(true,true)
	end
	def test_100_minus_25_equals_75
		assert_equal(75,difference(100,25))
	end
	def test_73_minus_42_equals_31
		assert_equal(31,difference(73,42))
	end
	def test_140_minus_63_equals_77
		assert_equal(77,difference(140,63))
	end
end