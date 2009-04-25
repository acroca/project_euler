puts (1..999).to_a.select{ |i|
  i%5==0 || i%3==0
}.inject(0){ |sum, i| sum+i }
