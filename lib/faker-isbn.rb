require 'rubygems'

module Faker
  class ISBN

    def self.thirteen_digit(rand_seed=rand(1000))
      isbn_13 = (978000000000+rand_seed).to_s

      isbn_array = Array.new
      isbn_13.split(//).each { |digit| isbn_array << digit.to_i }
      dot_product = [isbn_array, [1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3]].transpose.inject(0) { |result, pair| result += pair[0]*pair[1]; result }
      check_digit = 10 - (dot_product % 10)
      check_digit = 0 if check_digit == 10
      isbn_13 << check_digit.to_s
      isbn_13
    end

    def self.ten_digit
      nine_digits = "0#{rand(10000000..99999999)}"
      multipliers = (2..10).to_a.reverse
      sum_of_products = [nine_digits.chars.map(&:to_i), multipliers].transpose.inject(0) { |memo, obj| memo += obj[0] * obj[1]; memo }
      remainder = sum_of_products % 11

      if (remainder == 0)
        tenth_digit = 0
      else
        tenth_digit = 11 - remainder
        tenth_digit = "X" if tenth_digit == 10
      end

      ten_digit = nine_digits << tenth_digit.to_s
      ten_digit
    end

  end
end
