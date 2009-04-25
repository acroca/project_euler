class Fixnum
  def fact
    (1..self).to_a.inject(1){|acc, i|
      acc*i
    }
  end
end

puts 100.fact.to_s.split("").inject(0){|acc, i| acc + i.to_i}
