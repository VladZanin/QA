# ========================================================================
# Script 		=	12
# ========================================================================
# Description 	=	"This is a description of the script"
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================

^	# Start of line
(?:	# Open parenthesis, Passive group
 (?:\+?1\s*	# Passive group Plus 0 or 1, digit 1, whitespace 0 or more times
  (?:[.-]\s*)?)?	# Open parenthesis, Passive group matches Period, Hyphen, Whitespace 0 or   more times, 0 or more times.
 (?:\(\s*([2-9]1[02-9]    	# Open parenthesis, Passive group, Open parenthesis, Whitespace 0 or more times, matches digit from 2 to 9, exact digit 1, digit 0 and from 2 to 9,
          |	# Or
          [2-9][02-8]1	# Digit from 2 to 9, digit 0 and from 2 to 8, exact digit 1,
          |	# Or
          [2-9][02-8][02-9])\s*\)	Digit from 2 to 9, digit 0 and from 2 to 8, digit 0 and from 2 to 9, Whitespace 0 or more times, Close parentheses.
  |	# Or
  ([2-9]1[02-9]	# Open parenthesis, Matches digit from 2 to 9, exact digit 1, digit 0 and from 2 to 9.
   |	# Or
   [2-9][02-8]1	# Matches digit from 2 to 9, digit 0 and from 2 to 8, exact digit 1.
   |	# Or
   [2-9][02-8][02-9])\s*\)	# Matches digit from 2 to 9, digit 0 and from 2 to 8, digit 0 and from 2 to 9, Whitespace 0 or more times, Close parentheses.
 |	# Or
 (?:[.-]\s*)?)?	# Open parenthesis, Passive group matches Period, Hyphen, Whitespace 0 or   more times, 0 or more times.
([2-9]1[02-9]	# Open parenthesis, matches digit from 2 to 9, exact digit 1, digit 0 and from 2 to 9
 |	# Or
 [2-9][02-8]1	# Matches digit from 2 to 9, digit 0 and from 2 to 8, exact digit 1.
 |	# Or
 [2-9][02-8][02-9])\s*\)	# Matches digit from 2 to 9, digit 0 and from 2 to 8, digit 0 and from 2 to 9, Whitespace 0 or more times, Close parentheses.
(?:[.-]\s*)?)?	# Passive group matches Period, Hyphen, Whitespace 0 or   more times, 0 or more times.
([2-9]1[02-9]|	# Matches digit from 2 to 9, exact digit 1, digit 0 and from 2 to 9,
 |	# Or
 [2-9][02-9]1	# Open parenthesis, Matches digit from 2 to 9, digit 0 and from 2 to 9, exact digit 1
 |	# Or
 [2-9][02-9]{2})\s*	# Matches digit from 2 to 9, digit 0 and from 2 to 9, 2 times, Close parentheses, Whitespace 0 or more times
(?:[.-]\s*)?  	# Passive group matches Period, Hyphen, Whitespace 0 or   more times, Close parentheses, 0 or more times.
([0-9]{4})	# Open parenthesis, Matches digit from 0 to 9, 4 times, Close parentheses.
(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?$	# Open parenthesis, Passive group, Whitespace 0 or more times, Open parenthesis, Passive group, Comment, Or, Allow comments & white space, Period 0 or 1 times, “ext” with Period 0 or 1 times, Or, “extension”, Close parentheses, Whitespace 0 or more times, Open parenthesis, 1 or more digit, Close parentheses, 0 or 1 more time, end line.
