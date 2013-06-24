## ========================================================================
# Script 		=
# ========================================================================
# Description 	=	[ITA] Homework # 18.05 - Trollop
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================
require 'trollop'

opts=Trollop::options do
    
    opt :first, "first_octet", :short=> "-a", :type=>:int
    opt :second, "second_octet", :short=> "-b", :type=>:int
    opt :third, "third_octet", :short=> "-c", :type=>:int
    opt :fourth, "fourth_octet", :short=> "-d", :type=>:int
    opt :fifth, "fifth_octet", :short=> "-e", :type=>:int
    
end

average_score=(opts[:first].to_f+opts[:second].to_f+opts[:third].to_f+opts[:fourth].to_f+opts[:fifth].to_f)/5



puts "Average score of (#{opts[:first].to_f}, #{opts[:second].to_f}, #{opts[:third].to_f}, #{opts[:fourth].to_f} and #{opts[:fifth].to_f}) is #{average_score}"