require 'spec_helper'

describe Faker::ISBN do

  describe "#thirteen_digit" do

    it 'generates a valid 13 digit ISBN' do
      20.times { Bookland::ISBN.valid?(Faker::ISBN.thirteen_digit).should be_true }
    end

    it 'generates a valid 10 digit ISBN' do
      20.times { Bookland::ISBN10.valid?(Faker::ISBN.ten_digit).should be_true }
    end

  end

end