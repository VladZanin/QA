# ========================================================================
# Script 		= 23_04
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

puts "My IP address is: #{element["octet_1"].chomp}.#{element["octet_2"].chomp}.#{element["octet_3"].chomp}.#{element["octet_4"].chomp}"

