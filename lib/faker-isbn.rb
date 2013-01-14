require 'rubygems'
require 'bookland'

module Faker
  class ISBN
    @thirteen_digit_multipliers = [1, 3]
    @thirteen_digit_modulo = 10

    def self.thirteen_digit
      isbn_13 = ""
      until Bookland::ISBN.new(isbn_13).valid? do
        isbn_digit_array = [9, 7, 8]
        (1..9).each { isbn_digit_array << rand(10) }
        isbn_digit_array << calculate_thirteenth_check_digit(isbn_digit_array)
        isbn_13 = isbn_digit_array.join
      end
      isbn_13
    end

    private

    def self.calculate_thirteenth_check_digit(twelve_digit_array)
      sum = 0
      twelve_digit_array.each_with_index do |digit, index|
        multiplier = (index % 2 == 0) ? @thirteen_digit_multipliers[0] : @thirteen_digit_multipliers[1]
        sum += digit * multiplier
      end
      @thirteen_digit_modulo - (sum % @thirteen_digit_modulo)
    end
  end
end
