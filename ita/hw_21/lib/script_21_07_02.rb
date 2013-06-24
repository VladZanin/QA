## ========================================================================
# Script 		=
# ========================================================================
# Description 	=	[ITA] Homework # 21.07 - Trollop
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

re=/[A-Z][a-z]+\s[A-Z][a-z]+/
name = lines[0].match re


puts "#{lines[0]} His name is: #{name}"

