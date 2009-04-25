tmp = (1..100).to_a.inject([0,0]){ |acc, i|
  acc[0] += i**2
  acc[1] += i
  acc
}
tmp[1] **= 2

puts tmp[1] - tmp[0]
