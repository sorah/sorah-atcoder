s = $stdin.gets.chomp.split(/ /)
n = $stdin.gets.to_i
ng = n.times.map { $stdin.gets.chomp }

ng_regexp = /^(#{ng.map { |_| _.gsub(/\*/, '[a-z]') }.join('|')})$/

puts s.map { |_| _.gsub(ng_regexp) { |s| '*' * s.size } }.join(' ')
