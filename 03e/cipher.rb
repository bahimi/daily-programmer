# Make a program that can encrypt texts with and alphabetical caesar cipher.  This cipher can ignore numbers, symbols, and whitespace.
# For extra credit write a "decrypt" function to your program.


#Get input from user
string = arg[0]
cipher = arg[1]

#Separate into individual characters in an array
by_char = string.split(//)

#Convert each character in to ASCII value (65..90 for upcase, 97..122 for downcase)
#To perform, write block to iterate through array for each non-space and use .ord
by_char.map! do |c|
  c.ord
end

by_char.map! do |d|
  if d == 32

  else
    d += cipher.to_i
  end
end

by_char.map! do |e|
  e.chr
end


#Evaluate any in upcase range


#For each value, add or subtract based on input by user (in range 1..25)

#If value is over 122, subtract 122 and add 96 to put it back in range

#Convert back to characters using .chr

#Combine array into string using .join
