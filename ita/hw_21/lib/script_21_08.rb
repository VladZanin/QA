## ========================================================================
# Script 		=
# ========================================================================
# Description 	=	[ITA] Homework # 21.08 - Trollop
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
    lines.push line.chomp
end


season=[]
season[0]=lines[0]
season[1]=lines[1]
season[2]=lines[2]
season[3]=lines[3]

puts "Here are sorted (alphabetically) words: #{season.sort.join(", ")}"