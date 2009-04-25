require 'rubygems'
require 'activesupport'

start = Date.strptime("06/01/1901", "%d/%m/%Y")
stop = Date.strptime("31/12/2000", "%d/%m/%Y")

sundays_one = 0
while((start += 1.week) < stop)
  sundays_one += 1 if start.day == 1
end

puts sundays_one
