## ========================================================================
# Script 		= 21_05
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

average_score=(lines[0].to_f+lines[1].to_f+lines[2].to_f+lines[3].to_f+lines[4].to_f)/5


puts "Average score of (#{lines[0].chomp},#{lines[1].chomp},#{lines[2].chomp},#{lines[3].chomp} and #{lines[4].chomp}) is #{average_score}"