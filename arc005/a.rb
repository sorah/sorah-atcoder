takahashikun = /^(TAKAHASHIKUN|Takahashikun|takahashikun)$/

$stdin.gets
p $stdin.gets.chomp.gsub(/\.$/,'').split(/ /).grep(takahashikun).size
