class PrimeNumber
  def self.is_prime?(number)
    raise unless number.is_a?(Numeric)
    (2..number/2).none?{|i| number % i == 0}
  end

  def self.next_prime_number(number=0, next_number=nil, first_pass=true)
    raise unless number.is_a?(Numeric)
    if (first_pass)
      number = number+1
    end

    if (next_number.nil?)
      next_number = number+1
    end

    if (is_prime?(number))
      return number
    end

    next_prime_number(next_number, next_number+1, false)
  end
end