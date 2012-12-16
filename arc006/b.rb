n, l = STDIN.gets.chomp.split(/ /).map(&:to_i)
lines = l.times.map { $stdin.gets[1..-1].split(/\|/).map{|x| x == '-' } }.reverse


position = ($stdin.gets.chomp.gsub(/o *$/,'').size)/2
lines.each do |line|
  if line[position]
    position += 1
  elsif 0 <= (position-1) && line[position-1]
    position -= 1
  end
end
p position+1
