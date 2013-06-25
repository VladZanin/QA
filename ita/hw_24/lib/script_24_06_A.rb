# ========================================================================
# Script 		= 24_06
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

average_score=(element[script_name]["int_a"].to_i+element[script_name]["int_b"].to_i+element[script_name]["int_c"].to_i+element[script_name]["int_d"].to_i+element[script_name]["int_e"].to_i+element[script_name]["int_f"].to_i)/6



puts "The summury of the following numbers is #{average_score}"

