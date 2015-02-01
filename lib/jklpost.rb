require 'date'

class Jklpost

def initialize
    abort("Error! Too much arguments! Usage: jklpost <filename> [options].") if ARGV.length > 2
    @title = "post"
    @layout = "default"
    @date = Date.today.to_s
    @timeStamp = Time.now.strftime "%H%M%S"

    @title = ARGV[0] if ARGV.length == 1
    @layout = ARGV[1] if ARGV.length == 2
    @filename = @date.to_s + "-" + @title.to_s + "-" + @timeStamp.to_s + ".md"
end

def run
File.open(@filename.to_s,"w"){|file|
    file.puts("---")
    file.puts("layout: #{@layout}")
    file.puts("title: \"#{@title}\"")
    file.puts("date: #{Time.now.strftime "%Y-%m-%d %H:%M:%S"}")
    file.puts("---")
}
end

def showDoneMsg
    puts "Successful! #{@filename.to_s} is created."
end

end

