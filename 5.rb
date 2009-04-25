class Integer
  def divisible_range?(from, to)
    (from..to).to_a.inject(true){ |a,i| a && self%i==0}
  end
end

start = (1..20).to_a.inject(1){ |a,i| a*i }

puts (1..20).to_a.inject(start){ |res, i| (res/i).divisible_range?(1, 20) ? res/i : res}
