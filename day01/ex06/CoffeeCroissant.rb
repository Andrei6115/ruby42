#!/usr/bin/ruby -w

def init_data
    data = [
        ['Frank', 33],
        ['Stacy', 15],
        ['Juan' , 24],
        ['Dom' , 32],
        ['Steve', 24],
        ['Jill' , 24]
        ]
    return data
end

def func
    data = init_data
    data = data.sort_by{|name, age| [age, name]}
    data.each{|item| puts item[0]}
end
func