# ========================================================================
# Script 		= 21_03
# ========================================================================
# Description 	=	[ITA] Homework # 21 - Input (Text files) 
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================
require 'optparse'

OptionParser.new do |opts|
    opts.on("i", "--input") do
        $file_name=ARGV[0]
    end
    
end.parse!

lines=[]
file=File.open($file_name,"r")
file.each_line do|line|
    lines.push line
end
x=lines[0].to_i
y=lines[1].to_i


puts "When I am dividing #{x} by #{y} I am always have #{x/y}"

