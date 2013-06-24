# ========================================================================
# Script 		= 23_06_02
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

average_score=(element["int_a"].to_f+element["int_b"].to_f+element["int_c"].to_f+element["int_d"].to_f+element["int_e"].to_f+element["int_f"].to_f+element["int_g"].to_f+element["int_h"].to_f+element["int_i"].to_f+element["int_j"].to_f)/10



puts "The summury of the following numbers is #{average_score}"

    
