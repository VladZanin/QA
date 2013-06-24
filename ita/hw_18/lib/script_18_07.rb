## ========================================================================
# Script 		=
# ========================================================================
# Description 	=	[ITA] Homework # 18.07 - Trollop
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================
require 'trollop'

opts=Trollop::options do

    opt :first, "first_sentence",:short => "-f", :type=> :strings
    end



re=/[A-Z][a-z]+\s[A-Z][a-z]+/
name = opts[:first].join(" ").match re
puts "His name is: #{name}"