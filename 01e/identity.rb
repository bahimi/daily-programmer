#!/usr/bin/env ruby

puts "Hello, what is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp

puts "What's your username?"
username = gets.chomp

reply = "your name is #{name}, you are #{age} years old, and your username is #{username}"

File.open("identity.txt", "w+") {|file| file.write("#{reply} + \n")}
