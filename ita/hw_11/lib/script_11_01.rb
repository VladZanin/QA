# ========================================================================
# Script 		=	11
# ========================================================================
# Description 	=	[ITA] Homework # 11 - regex decomposition (IPv4 Address)
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================

^	#  Start of line
(\d|	# Digit, (or)
 [01]?\d\d|	# Digit 0 or 1 (0 or 1 times), digit, digit, (or)
 2[0-4]\d|	# Digit “2” with one digit from 0 to 4, digit.
 25[0-5])	# Digit “25” with one digit from 0-5.
.	# Period
(\d|	# Digit, (or)
 [01]?\d\d|	# Digit 0 or 1 (0 or 1 times), digit, digit, (or)
 2[0-4]\d|	# Digit “2” with one digit from 0 to 4, digit.
 25[0-5])	# Digit “25” with one digit from 0-5.
.	# Period
(\d|	# Digit, (or)
 [01]?\d\d|	# Digit 0 or 1 (0 or 1 times), digit, digit, (or)
 2[0-4]\d|	# Digit “2” with one digit from 0 to 4, digit.
 25[0-5])	# Digit “25” with one digit from 0-5.
.	# Period
(\d|	# Digit, (or)
 [01]?\d\d|	# Digit 0 or 1 (0 or 1 times), digit, digit, (or)
 2[0-4]\d|	# Digit “2” with one digit from 0 to 4, digit.
 25[0-5])	# Digit “25” with one digit from 0-5.
.	# Period
$	# End of line.
