# ========================================================================
# Script 		=
# ========================================================================
# Description 	=	[ITA] Homework # 17.07 - Command-line Option
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================

require 'optparse'

OptionParser.new do |opts|
    opts.on("-s", "--sentence") do
        $s=ARGV[0]
    end
end.parse!


re=/[A-Z][a-z]+\s[A-Z][a-z]+/
name = ARGV.join(" ").match re
puts "Output: His name is: #{name}"