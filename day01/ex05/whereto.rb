#!/usr/bin/ruby -w

def init_states
	states = {
		"Oregon" => "OR",
		"Alabama" => "AL",
		"New Jersey" => "NJ",
		"Colorado" => "CO"
	}
	return states
end

def init_cities
	capitals_cities = {
		"OR" => "Salem",
		"AL" => "Montgomery",
		"NJ" => "Trenton",
		"CO" => "Denver"
	}
	return capitals_cities
end

def valid
	if (ARGV.length != 1) 
		puts "Only one arg"
		return nil
	end
	i = 0
	while (i < ARGV[0].length - 1)
		if (ARGV[0][i] == ',' && ARGV[0][i + 1] == ',')
			puts "Double comma"
			return nil
		end
		i += 1
	end 
	ret = ARGV[0].split(',')
	ret = ret.map {|str| str.strip.capitalize}
	return ret
end

def	print_state states, cities, elem
	puts "#{cities[states[elem]]} is the capital of #{elem} (akr: #{states[elem]})"
end

def print_cities states, cities, elem
	puts "#{states.key(cities.key(elem))} is the capital of #{elem} (akr: #{cities.key(elem)})"
end

def func 
	states = init_states
	cities = init_cities
	input = valid

	input.each do |x|
		if (states.key?(x) == true)
			print_state states, cities, x
		elsif (cities.value?(x) == true)
			print_cities states, cities, x
		elsif (x.empty? == false)
			puts "#{x} is neither a capital city nor a state"
		end
	end
end

func