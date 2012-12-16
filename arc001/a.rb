STDIN.gets; corrects = STDIN.gets.chomp
a = (1..4).map{|i| corrects.gsub(/[^#{i}]/,'').size }
puts "#{a.max} #{a.min}"
