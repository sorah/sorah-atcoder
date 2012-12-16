e = $stdin.gets.chomp.split(/ /).map(&:to_i)
b = $stdin.gets.chomp.to_i
l = $stdin.gets.chomp.split(/ /).map(&:to_i)

e_hash = {}
e.each {|i| e_hash[i] = true }

a = l.select{|i| e_hash[i] }.size

case a
when 3
  p 5
when 4
  p 4
when 5
  if l.any?{|i| i == b}
    p 2
  else
    p 3
  end
when 6
  p 1
else
  p 0
end
