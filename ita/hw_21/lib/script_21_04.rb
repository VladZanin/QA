## ========================================================================
# Script 		= 21_04
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

puts "My IP address is: #{lines[0].chomp}.#{lines[1].chomp}.#{lines[2].chomp}.#{lines[3]}"



