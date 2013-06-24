# ========================================================================
# Script 		= 23_08
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

season=[]
season[0]=element["season_a"]
season[1]=element["season_b"]
season[2]=element["season_c"]
season[3]=element["season_d"]



puts "Here are sorted (alphabetically) words: #{season.sort.join(", ")}"



