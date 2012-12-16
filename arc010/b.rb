require 'date'
n = $stdin.gets.to_i
holidays = n.times.map { Date.new(2012, *$stdin.gets.split(/\//).map(&:to_i)) }
holidays.sort!

satsun = (Date.new(2012,1,1) .. Date.new(2012,12,31)).select { |d| d.cwday == 6 || d.cwday == 7 }

satsun.each do |d|
  if holidays.include?(d)
    instead = d.succ
    while holidays.include?(instead) || instead.cwday == 6 || instead.cwday == 7
      instead += 1
    end
    holidays << instead
  else
    holidays << d
  end
end

holidays.select! { |k| k.year == 2012 }


holidays.sort!

max = 1
result = 1
holidays.inject(nil) do |prev, holiday|
  if prev
    if prev.succ == holiday
      result += 1
    else
      if max < result
        max = result
      end
      result = 1
    end
  end
  holiday
end

puts [max, result].max
