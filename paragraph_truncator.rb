=begin
ParagraphTruncator
Takes a long string (i.e. a paragraph) and truncates it to X characters and sticks a ... at the end.
Should be able to take an argument to define X and also define an alternative set of characters for the ... (e.g. "Read More")
=end
require "active_support"
require "active_support/core_ext/string/filters.rb" #truncate
require "active_support/core_ext/numeric/conversions.rb" # phone number
require "active_support/core_ext/array/conversions.rb" #and

puts "Oh dear! Oh dear! I shall be late!".truncate(18, separator: /\s/)

puts "enter your 7 digit phone number"
phone_number = gets.chomp.to_i
puts phone_number.to_s(:phone)

%w(Earth Wind Fire).to_sentence