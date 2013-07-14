# ========================================================================
# Script 		=	__28_07__
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

    
    season=[]
    season[0]=items[0]
    season[1]=items[1]
    season[2]=items[2]
    season[3]=items[3]
    
    puts "Here are sorted (alphabetically) words: #{season.sort.join(" ")}"


rescue Mysql::Error => e
puts e.errno
puts e.error

ensure
con.close if con
end
