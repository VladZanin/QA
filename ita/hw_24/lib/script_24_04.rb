# ========================================================================
# Script 		= 24_04
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

puts "My IP address is: #{element[script_name]["octet_1"].chomp}.#{element[script_name]["octet_2"].chomp}.#{element[script_name]["octet_3"].chomp}.#{element[script_name]["octet_4"].chomp}"

