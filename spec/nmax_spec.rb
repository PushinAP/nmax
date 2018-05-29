require_relative 'spec_helper'

RSpec.describe Nmax do
  describe 'checking error message' do
    text = File.open("#{__dir__}/texts/text.txt", "r")
    empty_file = File.open("#{__dir__}/texts/empty.txt", "r")
    without_numbers = File.open("#{__dir__}/texts/without_numbers.txt", "r")

    it 'start without count should error message ' do
      expect(Nmax.start(text)).to eq("There is no count or it's zero!")
    end

    it 'start with empty file should error message' do
      expect(Nmax.start(empty_file, 4)).to eq("File is empty or not find numbers")
    end

    it 'start file without numbers should error message' do
    	expect(Nmax.start(without_numbers, 10)).to eq("File is empty or not find numbers")
    end	

    it 'checking work nmax' do
  		expect(Nmax.start(text, 10)).to eq([6464976431645975795794845137276, 96731649572861345879461, 
  			65656533134646478, 3164245794613, 77775564546, 
  			65588888411, 63214789554, 9563154647, 9512674347, 3121465494])
    end
 	end 	
end