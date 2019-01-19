require_relative "../lib/prime_factors"
require "test/unit"

class TestPrimeFactors < Test::Unit::TestCase
  def test_prime_factors_of_10
    assert_equal([2,5], PrimeFactors.new(10).get_prime_factors())
  end

  def test_prime_factors_of_12
    assert_equal([2,2,3], PrimeFactors.new(12).get_prime_factors())
  end

  def test_prime_factors_of_17
    assert_equal([17], PrimeFactors.new(17).get_prime_factors())
  end

  def test_prime_factors_of_147
    assert_equal([3,7,7], PrimeFactors.new(147).get_prime_factors())
  end
end
