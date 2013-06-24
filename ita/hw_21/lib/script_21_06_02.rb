## ========================================================================
# Script 		= 21_06_02
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

average_score=(lines[0].to_i+lines[1].to_i+lines[2].to_i+lines[3].to_i+lines[4].to_i+lines[5].to_i+lines[6].to_i+lines[7].to_i+lines[8].to_i+lines[9].to_i)/10


puts "The summary of the following numbers is #{average_score}"


    
