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

    
    a=items[0].to_f
    b=items[1].to_f
    c=items[2].to_f
    d=items[3].to_f
    e=items[4].to_f
    f=(a+b+c+d+e)/5
    puts "Average score of #{a} #{b} #{c} #{d} and #{e} is #{f}"
    

rescue Mysql::Error => e
puts e.errno
puts e.error

ensure
con.close if con
end
