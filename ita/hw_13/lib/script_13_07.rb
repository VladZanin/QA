# ========================================================================
# Script 		=	script_13_07.rb
# ========================================================================
# Description 	=	"This is a description of the script"
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================


re=/[A-Z][a-z]+\s[A-Z][a-z]+/
name = ARGV.join(" ").match re
puts "Output: His name is: #{name}"


