#!/usr/bin/env ruby

#Define strings prompting for values

v_quest = "What is the value for potential difference(in volts)?\n"
r_quest = "What is the value for resistance(in ohms)?\n"
i_quest = "what is the value for current(in amperes)?\n"

#Ohm's law is I = V/R or V = IR or R = V/I

#Get user input for what to find the answer for: R, V, or I

puts "Would you like to solve for resistance(r), potential difference(v), or current(i)?:"

unknown = gets.chomp.downcase

case unknown
  when unknown = "r"
    puts "This is to evaluate for resistance"
    puts v_quest
    volts = gets.to_f
    puts i_quest
    current = gets.to_f
    
    resistance = volts/current

    puts "The value for resistance is:\n#{resistance}"

  when unknown = "v"
    puts "This is when to evaluate for potential difference"
    puts i_quest
    current = gets.to_f
    puts r_quest
    resistance = gets.to_f

    volts = current*resistance

    puts "The value for potential difference is:\n#{volts}"

  when unknown = "i"
    puts "This is when to evaluate for current"
    puts v_quest
    volts = gets.to_f
    puts r_quest
    resistance = gets.to_f

    current = volts/resistance

    puts "The value for current is:\n#{current}"

  else
    puts "The value you entered is invalid"
end
