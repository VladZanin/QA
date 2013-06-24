## ========================================================================
# Script 		=
# ========================================================================
# Description 	=	[ITA] Homework # 18.04 - Trollop
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================
require 'trollop'

opts=Trollop::options do

    opt :first, "first_octet", :short=> "-a", :type=>:int
    opt :second, "second_octet", :short=> "-b", :type=>:int
    opt :third, "third_octet", :short=> "-c", :type=>:int
    opt :fourth, "fourth_octet", :short=> "-d", :type=>:int
end


puts "My IP address is: #{opts[:first]}.#{opts[:second]}.#{opts[:third]}.#{opts[:fourth]}"