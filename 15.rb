class Node
  def initialize
  end
  
  def set_r(n)
    @r = n
  end
  def set_d(n)
    @d = n
  end
  
  def go
    return 1 if @r == nil && @d == nil
    return @res if @res
    @res = 0
    @res += @r.go unless @r == nil
    @res += @d.go unless @d == nil
    @res
  end
end

SIZE = 21
matrix = Array.new(SIZE){  Array.new(SIZE){  Node.new }}

SIZE.times{  |i|
  SIZE.times{  |j|
    matrix[i][j].set_r matrix[i+1][j] if matrix[i+1]
    matrix[i][j].set_d matrix[i][j+1]
  }
}
puts matrix[0][0].go
