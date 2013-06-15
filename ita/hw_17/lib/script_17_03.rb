# ========================================================================
# Script 		=
# ========================================================================
# Description 	=	[ITA] Homework # 17.03 - Command-line Option
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================
require 'optparse'

OptionParser.new do |opts|
opts.on("-f", "--first_number") do
   $a=ARGV[0]
end
opts.on("-s", "--second_number") do
   $b=ARGV[0]
end
end.parse!

a=$a.to_i
b=$b.to_i
c=a/b

puts "When I am dividing #{a} by #{b} I am always have #{c}"