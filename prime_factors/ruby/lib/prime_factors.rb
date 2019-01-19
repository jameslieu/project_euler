require_relative "prime_number"

class PrimeFactors
  def initialize(num)
    raise unless num.is_a?(Numeric)
    @num = num
  end

  def get_prime_factors(value=@num, prime_number=2, result=[])
    if (PrimeNumber.is_prime?(value))
      result.push(value)
      return result
    end

    if (value % prime_number != 0 )
      next_prime_number = PrimeNumber.next_prime_number(prime_number)
      return get_prime_factors(value, next_prime_number, result)
    end

    result.push(prime_number)
    value = value / prime_number

    if (!PrimeNumber.is_prime?(value))
      return get_prime_factors(value, prime_number, result)
    end

    result.push(value)
    return result
  end
end
