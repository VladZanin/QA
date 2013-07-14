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

    
    average_score=(items[0].to_i+items[1].to_i+items[2].to_i+items[3].to_i+items[4].to_i+items[5].to_i+items[6].to_i+items[7].to_i+items[8].to_i+items[9].to_i)/10
    
    
    puts "The summary of the following numbers is #{average_score}"

rescue Mysql::Error => e
puts e.errno
puts e.error

ensure
con.close if con
end
