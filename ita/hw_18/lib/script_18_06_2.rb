## ========================================================================
# Script 		=
# ========================================================================
# Description 	=	[ITA] Homework # 18.06 - Trollop
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================
require 'trollop'

opts=Trollop::options do
    
    
    opt :first, "first_number", :short=> "-a", :type=>:int
    opt :second, "second_number", :short=> "-b", :type=>:int
    opt :third, "third_number", :short=> "-c", :type=>:int
    opt :fourth, "fourth_number", :short=> "-d", :type=>:int
    opt :fifth, "fifth_number", :short=> "-e", :type=>:int
    opt :sixth, "sixth_number", :short=> "-f", :type=>:int
    opt :seventh, "seventh_number", :short=> "-g", :type=>:int
    opt :eighth, "eighth_number", :short=> "-h", :type=>:int
    opt :nineth, "nineth_number", :short=> "-i", :type=>:int
    opt :tenth, "tenth_number", :short=> "-j", :type=>:int
    
    end

average_score=(opts[:first].to_f+opts[:second].to_f+opts[:third].to_f+opts[:fourth].to_f+opts[:fifth].to_f+opts[:sixth].to_f+opts[:seventh].to_f+opts[:eighth].to_f+opts[:nineth].to_f+opts[:tenth].to_f)/10



puts "The summury of the following numbers (#{opts[:first]}, #{opts[:second]}, #{opts[:third]}, #{opts[:fourth]}, #{opts[:fifth]}, #{opts[:sixth]}, #{opts[:seventh]}, #{opts[:eighth]}, #{opts[:nineth]}, #{opts[:tenth]}) is #{average_score}"