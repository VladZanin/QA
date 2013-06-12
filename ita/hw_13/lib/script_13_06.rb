# ========================================================================
# Script 		=	script_13_06.rb
# ========================================================================
# Description 	=	"This is a description of the script"
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================


sum=0
a=0
b=0
ARGV.each do |num|
sum+=num.to_f
end
summary = sum/ARGV.length
a,b = summary.to_s.split(".")
if b.to_i==0 then summary = summary.to_i end
puts "Output: The summary of the following numbers #{ARGV.join(",")} is: #{summary}"
