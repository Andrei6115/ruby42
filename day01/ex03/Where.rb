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
    if states.key?(ARGV[0]) == false
        puts "Unknown state"
    else
        puts capitals_cities[states[ARGV[0]]]
    end
end

func