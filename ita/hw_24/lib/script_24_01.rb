# ========================================================================
# Script 		= 24_01
# ========================================================================
# Description 	=	[ITA] Homework # 24 - Input (Single JSON files)
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
if RUBY_PLATFORM=~/darwin/ then
    script_name=__FILE__.split("/").to_a.last
    else
    script_name=__FILE__
    end
puts "My favorite fruits are: #{element[script_name]["fruit_a"]}s and #{element[script_name]["fruit_b"]}s"

