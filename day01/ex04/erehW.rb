#!/usr/bin/ruby -w

def func
    states = {
        "Oregon" => "OR",
        "Alabama" => "AL",
        "New Jersey" => "NJ",
        "Colorado" => "CO"
        }
    capitals_cities = {
        "OR" => "Salem",
        "AL" => "Montgomery",
        "NJ" => "Trenton",
        "CO" => "Denver"
        }
    if ARGV.length != 1
        puts "Only one arg"
        return
    end
    if capitals_cities.value?(ARGV[0]) == false
        puts "Unknown state"
    else
        puts states.key(capitals_cities.key(ARGV[0]))
    end
end

func