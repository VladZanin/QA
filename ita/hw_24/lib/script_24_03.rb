# ========================================================================
# Script 		= 24_03
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

x=element[script_name]["int_a"].to_i
y=element[script_name]["int_b"].to_i

puts "When I am dividing #{x} by #{y} I am always have #{x/y}"

