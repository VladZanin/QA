# ========================================================================
# Script 		=
# ========================================================================
# Description 	=	[ITA] Homework # 17.04 - Command-line Option
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================
require 'optparse'

OptionParser.new do |opts|
opts.on("-a", "--first_octet") do
   $a=ARGV[0]
end
opts.on("-b", "--second_octet") do
   $b=ARGV[0]
end
opts.on("-c", "--third_octet") do
   $c=ARGV[0]
end
opts.on("-d", "--fourth_octet") do
   $d=ARGV[0]
    
end
end.parse!


puts "My IP address is:#{$a}.#{$b}.#{$c}.#{$d}."