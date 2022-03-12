#!/usr/bin/ruby -w

def func
    file = File.new("numbers.txt", "r:UTF-8")
    if File.exist?("numbers.txt")
        content = file.readlines
        integer = []
        file.close
        count = 0
        while count < content.length do
            if (content[count].index('\n') != nil)
                content[count].slice!(content[count].index('\n'))
            end
            if (content[count].index(',') != nil)
                content[count].slice!(content[count].index(','))
            end
            integer[count] = content[count].to_i
            count += 1
        end
        puts integer.sort
    else
        puts "No file"
    end
end
func