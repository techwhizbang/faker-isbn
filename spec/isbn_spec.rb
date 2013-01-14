require 'spec_helper'

describe Faker::ISBN do

  describe "#thirteen_digit" do

    it 'generates a valid 13 digit ISBN' do
      20.times { Bookland::ISBN.new(Faker::ISBN.thirteen_digit).valid?.should be_true }
    end

  end

end