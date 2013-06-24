## ========================================================================
# Script 		=
# ========================================================================
# Description 	=	[ITA] Homework # 18.03 - Trollop
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================
require 'trollop'

opts=Trollop::options do
    
        opt :first, "first_number", :short=> "-f", :type=>:int
        opt :second, "second_number", :short=> "-s", :type=>:int
    end

    
    puts "When I am dividing (#{opts[:first]}) by (#{opts[:second]}) I am always have #{opts[:first]/opts[:second]}"
    
