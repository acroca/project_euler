# n -> n/2 (n is even)
# n -> 3n + 1 (n is odd)
class Integer

  Y_SIZE = 1000

  def calc(acc = 0)
    @@calcs ||= Array.new
    c_x, c_y = [self/Y_SIZE, self%Y_SIZE]
    @@calcs[c_x] ||= Array.new

    if @@calcs[c_x][c_y]
      @@calcs[c_x][c_y]
    else
      if self == 1
        return 1
      end
      n = if(self%2==0)
            self/2
          else
            (3*self)+1
          end
      n_c = n.calc(acc+1)
      @@calcs[c_x][c_y] = n_c + 1
    end
  end
end

max_i = 0
max_n = 0
i = 0

while((i+=1) < 1000000)
  c = i.calc
  if c>max_i
    max_n = i
    max_i = c
  end
end

puts max_i, max_n
