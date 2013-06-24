# ========================================================================
# Script 		=
# ========================================================================
# Description 	=	[ITA] Homework # 18.01 - Trollop
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================
require 'trollop'

opts=Trollop::options do
    opt :first, "first_fruit", :short=> "-a", :type=>:string
    opt :second, "second_fruit", :short=> "-b", :type=>:string
end


puts "My favorite fruits are:#{opts[:first]}s and #{opts[:second]}s"