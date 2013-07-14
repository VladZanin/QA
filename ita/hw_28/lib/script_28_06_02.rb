# ========================================================================
# Script 		=	__28_04__
# ========================================================================
# Description 	=	""
# Name 			=	"Vlad Zanin"
# Email 		=	"vladzanin@comcast.net"
# ========================================================================


require 'optparse'
require 'mysql'

items=[]

OptionParser.new do |opts|
    opts.on("-i", "--input"){$sql_file=ARGV[0]}
    opts.on("-d", "--db"){$db_name=ARGV[0]}
    opts.on("-t", "--table"){$table_name=ARGV[0]}
end.parse!

begin

    con=Mysql.new 'localhost', 'auto', 'password'
    con.query("CREATE DATABASE IF NOT EXISTS #{$db_name}")
    con.query("USE #{$db_name}")
    con.query("DROP TABLE IF EXISTS #{$table_name}")
    
File.readlines($sql_file).each do |sql|
sql.gsub("tbl", "#{$table_name}")
con.query("#{sql}")
end

rs=con.query("SELECT * FROM #{$table_name}")
    
rs.each_hash do |row|
    items<<row["item"].chomp
end

    average_score=(items[0].to_f+items[1].to_f+items[2].to_f+items[3].to_f+items[4].to_f+items[5].to_f+items[6].to_f+items[7].to_f+items[8].to_f+items[9].to_f)/10
    
    
    
    puts "The summury of the following numbers (#{items[0]}, #{items[1]}, #{items[2]}, #{items[3]}, #{items[4]}, #{items[5]}, #{items[6]}, #{items[7]}, #{items[8]}, #{items[9]}) is #{average_score}"

rescue Mysql::Error => e
puts e.errno
puts e.error

ensure
con.close if con
end
