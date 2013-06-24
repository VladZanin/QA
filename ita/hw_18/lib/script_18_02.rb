## ========================================================================
# Script 		=
# ========================================================================
# Description 	=	[ITA] Homework # 18.02 - Trollop
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================
require 'trollop'

opts=Trollop::options do
    opt :first, "first_fruit", :short=> "-a", :type=>:string
    opt :second, "second_fruit", :short=> "-b", :type=>:string
end


puts "My favorite fruits are:#{opts[:first].chop} and #{opts[:second].chop}"