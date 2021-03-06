class Integer

  def primes   # cf. http://snippets.dzone.com/posts/show/3734

    sieve = []
    3.step(self, 2) { |i| sieve[i] = i }
    sieve[1] = nil
    sieve[2] = 2

    3.step(Math.sqrt(self).floor, 2) do |i| 
      next unless sieve[i]
      (i*i).step(self, i) do |j|
        sieve[j] = nil
      end
    end

    sieve.compact!

  end 
end

puts 2000000.primes.inject(0){ |a,i| a+i}
