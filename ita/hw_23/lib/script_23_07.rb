# ========================================================================
# Script 		= 22_07_01
# ========================================================================
# Description 	=	[ITA] Homework # 23 - Input (JSON files)
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================
require 'optparse'
require 'json'
OptionParser.new do |opts|
    opts.on("-i","--input") do
        $file_name=ARGV[0]
    end
end.parse!

json_file=File.read($file_name)
element=JSON.parse(json_file)

re=/[A-Z][a-z]+\s[A-Z][a-z]+/
name = element["sentence"].match re


puts "#{element["sentence"]} His name is: #{name}"
