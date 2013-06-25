# ========================================================================
# Script 		= 24_08
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

season=[]
season[0]=element[script_name]["season_a"]
season[1]=element[script_name]["season_b"]
season[2]=element[script_name]["season_c"]
season[3]=element[script_name]["season_d"]



puts "Here are sorted (alphabetically) words: #{season.sort.join(", ")}"



