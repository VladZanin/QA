# ========================================================================
# Script 		= 23_01
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
puts "My favorite fruits are: #{element["fruit_a"]}s and #{element["fruit_b"]}s"

