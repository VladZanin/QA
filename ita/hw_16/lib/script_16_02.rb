# ========================================================================
# Script 		=
# ========================================================================
# Description 	=	[ITA] Homework # 16_02 - Command-line Option
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================
if RUBY_PLATFORM=~/32/ then
    
    %x'dir /s %HOMEDRIVE% > list.txt'
    
    else
    
    %x'cd $HOME;ls -la > list.txt'
    
end

sleep(10)

files_all=/(\w+\.\w{2,3})/
list=[]

file=File.read('list.txt')

file.scan(files_all) do |all_match|
    
    list << all_match
end


puts "Your home directory contains: #{list.size} files"