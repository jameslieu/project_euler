require_relative "../lib/prime_number"
require "test/unit"

class TestPrimeNumber < Test::Unit::TestCase
  def test_2_is_a_prime_number
    assert_equal(true, PrimeNumber.is_prime?(2))
  end

  def test_13_is_a_prime_number
    assert_equal(true, PrimeNumber.is_prime?(13))
  end

  def test_12_is_not_a_prime_number
    assert_equal(false, PrimeNumber.is_prime?(12))
  end

  def test_next_prime_number_of_2
    assert_equal(3, PrimeNumber.next_prime_number(2))
  end

  def test_next_prime_number_of_17
    assert_equal(19, PrimeNumber.next_prime_number(17))
  end
end