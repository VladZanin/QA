# ========================================================================
# Script 		= 23_05
# ========================================================================
#[ITA] Homework # 23 - Input (JSON files)
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

average_score=(element["int_a"].to_f+element["int_b"].to_f+element["int_c"].to_f+element["int_d"].to_f+element["int_e"].to_f)/5



puts "Average score of #{element["int_a"]},#{element["int_b"]}.#{element["int_c"]}.#{element["int_d"]} and #{element["int_e"]} is #{average_score}"