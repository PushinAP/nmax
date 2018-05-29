require "nmax/version"
require_relative "output"

module Nmax

  def Nmax.start(stdin = [], argv = 0)

    @count = argv

    return Outputs.cheking_count if @count == 0 # If count is zero then displaing message

    text = parsing_to_words(stdin.read)

    return Outputs.cheking_text if text.empty? # If text is not find then displaing message

    converting_to_numbers text

  end

  def Nmax.parsing_to_words(text)

    text.split

  end

  def Nmax.converting_to_numbers(words)

    numbers = words.map{|a| a.to_i}.reject{|a| a == 0}

    return Outputs.cheking_text if numbers.empty? # If numbes is not find in the text then displaing message

    sorting numbers

  end

  def Nmax.sorting(numbers)

    sorted_numbers = numbers.sort.reverse

    Outputs.result sorted_numbers[0 .. @count - 1]

  end

end 
