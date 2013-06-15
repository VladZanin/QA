# ========================================================================
# Script 		=
# ========================================================================
# Description 	=	[ITA] Homework # 16 - Command-line Option
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.com"
# ========================================================================
files_all=/(\w+\.\w{2,3})/
files_txt=/(\w+\.(txt))/
list=[]

if RUBY_PLATFORM=~ /32/
    then
    %x'dir/s %HOMEDRIVE% > list.txt'
sleep(10)

file=File.read('list.txt')
file.scan(files_all)do |all_match|
list << all_match
end

puts "Your home directory contains: #{list.size} files"

else
%x'cd $HOME; ls -la > list.txt
sleep(10)

file=File.read('list.txt')
file.scan(files_all)do |all_match|
list << all_match
end

puts "Your home directory contains: #{list.size} files"

end
