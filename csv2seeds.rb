#! /usr/bin/env ruby
model_name = "City"

key=[:name,:permalink,:pagetitle,:metakey,:metadesc]
res = File.open("seeds.rb","w") 
p = Hash.new

File.open("USCity.csv","r") do |file|
    while line = file.gets
        0.upto(key.size-1) { |c| p[key[c]]=line.split(",")[1..-1][c].chomp }
        a = []
        a << p
        res << "#{model_name}.create(" << a.to_s[2..-3] << ")\n"
    end
end
