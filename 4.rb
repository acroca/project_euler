class String
  def is_palindrome?
    self == self.reverse
  end
end

puts (900..999).to_a.map{ |i|
  (900..999).to_a.map{ |j|
    s = "#{i*j}"
    s.is_palindrome? ? i*j : 0
  }.max
}.max
