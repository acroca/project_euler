class Integer
  def factors
    n = self
    result = []
    checker = 2

    while (checker**2 <= n) do
      if n % checker == 0
        result << checker
        n = n / checker
      else
        checker += 1
      end
    end

    if n != 1 # If n is not 1, then n is a prime!
      result << n
    end
  end
end

p 600851475143.factors.last
