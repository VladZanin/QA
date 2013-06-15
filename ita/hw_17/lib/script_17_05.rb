# ========================================================================
# Script 		=
# ========================================================================
# Description 	=	[ITA] Homework # 17.05 - Command-line Option
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
opts.on("-e", "--fifth_octet") do
   $e=ARGV[0]
    
end
end.parse!

f=($a.to_f+$b.to_f+$c.to_f+$d.to_f+$e.to_f)/5

puts "Average score of (#{$a},#{$b},#{$c},#{$d} and #{$e} is #{f}"