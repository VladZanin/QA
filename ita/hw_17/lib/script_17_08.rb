# ========================================================================
# Script 		=
# ========================================================================
# Description 	=	[ITA] Homework # 17.07 - Command-line Option
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================

require 'optparse'

OptionParser.new do |opts|
    opts.on("-a", "--season") do
        $a=ARGV[0]
    end
    opts.on("-b", "--season") do
        $b=ARGV[0]
    end
    opts.on("-c", "--season") do
        $c=ARGV[0]
    end
    opts.on("-d", "--season") do
        $d=ARGV[0]
    end
end.parse!


puts "Here are sorted (alphabetically) words:#{ARGV.sort.join(" ")}"