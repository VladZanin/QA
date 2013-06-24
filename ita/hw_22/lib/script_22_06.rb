# ========================================================================
# Script 		= 22_06
# ========================================================================
# Description 	=	[ITA] Homework # 22 - Input (CSV files)
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================
require 'optparse'
require 'csv'
OptionParser.new do |opts|
    opts.on("-i","--input") do
        $file_name=ARGV[0]
    end
    opts.on("-r","--row") do
        $row_num=ARGV[0].to_i-1
    end
end.parse!
csv_file=CSV.read($file_name)

average_score=(csv_file[$row_num][0].to_i+csv_file[$row_num][1].to_i+csv_file[$row_num][2].to_i+csv_file[$row_num][3].to_i+csv_file[$row_num][4].to_i+csv_file[$row_num][5].to_i)/6



puts "The summary of the following numbers is #{average_score}"

    
