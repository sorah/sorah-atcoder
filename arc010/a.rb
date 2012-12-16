n, m, a, b = $stdin.gets.split(/ /).map(&:to_i)
cs = m.times.map { $stdin.gets.to_i }

cs.each_with_index do |c, i|
  n += b if n <= a
  n -= c
  if n < 0
    puts i.succ
    exit
  end
end

puts 'complete'

