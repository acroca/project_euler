def fib(n)
  a,b = 0,1
  sum = []
  while( (i=a+b) < n)
    sum << i
    a,b = b,i
  end
  sum
end
puts fib(4000000).select{ |i| i%2==0}.inject(0){ |a,i| a+i}
