# ========================================================================
# Script 		=	06
# ========================================================================
# Description 	=	[ITA] Homework # 06 - regex decomposition (URL) 
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================

(https?)	# Group of multiple char +  capturing, secure communication 0 or 1.

:	# Colon
\/\/ # Double Forward slash.
([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+	# Group of multiple char + capturing with Hyphen and Matches a single digit or letter – between 0-9, a-z, A-Z, may be has any letter repeating 0 or More times, with Period, repeating 1 or More times
[a-zA-Z]{2,9}	# Matches a single letter – between a-z, A-Z, from 2 to 9 letters.
(:\d{1,4})?	# Colon with digits from 1 to 4 and repeating 0 or 1 times.
([-\w\/#~:.?+=&%@~]*)
 # Hyphen and Any word characters with any Metacharacters repeating 0 or More times
