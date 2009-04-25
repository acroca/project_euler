class Fixnum
  
  def factors
    n = self
    result = ""
    checker = 2

    while (checker**2 <= n) do
      if n % checker == 0
        result += checker.to_s
        n = n / checker
        result += ' ' unless n == 1
      else
        checker = checker + 1
      end
    end

    if n != 1
      result += n.to_s
    end

    result.to_a(' ')
  end

  # overwritten, I don't need modulus
  def sum_progression
    self * (self + 1) / 2
  end
  
  def integral_divisors_size
    factors = self.factors
    result = 1
    factors.uniq.each do |prime|
      result *= (factors.count(prime) + 1)
    end
    result
  end
  def calc_divisors
    res=[1]
    2.upto(Math.sqrt(self).floor) do |i|
      if self % i == 0
        res << i
      end
    end
    res.reverse.each do |i|
      res << self / i
    end
    res.uniq
  end

  def d
    div = self.calc_divisors
    div.pop
    div.inject(0){ |acc, i| acc + i}
  end
end

puts "d(d(220)) = d(" + 220.d.to_s + ") = " + 220.d.d.to_s

puts (1..9999).to_a.inject(0){ |acc, i| 
  i2 = i.d
  if (i2 != i) && (i2.d == i) && (i2 < 10000)
    acc+i 
  else
    acc
  end  
}
