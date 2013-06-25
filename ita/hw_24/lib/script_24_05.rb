# ========================================================================
# Script 		= 24_05
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

average_score=(element["int_a"].to_f+element["int_b"].to_f+element["int_c"].to_f+element["int_d"].to_f+element["int_e"].to_f)/5



puts "Average score of #{element[script_name]["int_a"]},#{element[script_name]["int_b"]},#{element[script_name]["int_c"]},#{element[script_name]["int_d"]} and #{element[script_name]["int_e"]} is #{average_score}"