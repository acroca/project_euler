(1..1000).to_a.each{ |a|
  (1..1000).to_a.each { |b|
    c=1000-a-b
    if(a**2 + b**2 == c**2)
      puts (a*b*c)
      exit
    end
  }
}
