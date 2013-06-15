# ========================================================================
# Script 		=
# ========================================================================
# Description 	=	[ITA] Homework # 17.02 - Command-line Option
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================
require 'optparse'

OptionParser.new do |opts|
opts.on("-f", "--first_fruit") do
   $a=ARGV[0]
end
opts.on("-s", "--second_fruit") do
   $b=ARGV[0]
end
end.parse!
puts "My favorite fruits are:#{$a.chop.to_s} and #{$b.chop.to_s}"