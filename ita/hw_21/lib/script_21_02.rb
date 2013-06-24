# ========================================================================
# Script 		= 21_02
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

puts "My favorite fruit is: #{lines[0].chop.chop} and #{lines[1].chop.chop}"
